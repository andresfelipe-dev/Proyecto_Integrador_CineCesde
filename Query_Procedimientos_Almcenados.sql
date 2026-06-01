--STORED PROCEDURES--

-- PROCEDIMIENTO PARA VER LA INFORMACION DE LA FUNCION --
create procedure info_funcion 
as
begin
    select f.fecha as fecha_funcion, p.titulo as Titulo_peliculas, p.duracion as Duracion_Pelicula, s.sala_nombre as sala, sd.sede_nombre as Sede, c.ciudad_nombre as Ciudad
    FROM Funciones as f
    inner join Peliculas as p
    on f.pelicula_id=p.pelicula_id
    inner join Salas as s
    on f.salas_id=s.salas_id
    inner join Salas_Sillas as ss
    on ss.salas_id= s.salas_id  
    inner join Sedes as sd
    on sd.sede_id = ss.sede_id 
    inner join Ciudades as c
    on c.ciudad_id = sd.ciudad_id
end;

-- EJECUCION -
exec info_funcion 

-- PROCEDIMENTO PARA HACER EL INSERT DE UNA NUEVA PELICULA --
create procedure insert_pelicula
    @titulo varchar(50),   
    @duracion int,   
    @directores_id int,   
    @clasificacion_id int  
    as   begin
        if exists(select titulo from Peliculas where titulo=@titulo)    
        select 'La pelicula ya existe'   
        else 
            begin    
            insert into Peliculas(titulo,duracion,directores_id,clasificacion_id)    
            values(@titulo,@duracion,@directores_id,@clasificacion_id)    
            select 'Insert exitoso'   
    end  
end;

-- PRUBA EN INSERT DE DATOS--
exec insert_pelicula 'Pelicula Prueba', 80, 4, 2;

--VERIFICACION DEL INSERT--
SELECT * FROM Peliculas

-- PRUEBA DE MENSAJE DE ERROR DE DUPLICADO--
exec insert_pelicula 'Pelicula Prueba', 80, 4, 2;


--PROCEDIMIENTO PARA SABER TODA LA INFORMACION DE LA PELICULA--
create procedure info_pel 
as
begin
    select p.titulo, STRING_AGG(g.genero_nombre,',') as Genero , c.clasificacion_nombre, concat(d.nombre ,' ', d.apellido) as director 
    from Peliculas as p
    inner join Peliculas_Generos as pg
    on p.pelicula_id=pg.pelicula_id
    inner join Generos as g
    on pg.genero_id=g.genero_id
    inner join Clasificacion as c
    on p.clasificacion_id=c.clasificacion_id
    inner join Directores as d
    on p.directores_id=d.directores_id
    group by 
    p.titulo,
    c.clasificacion_nombre,
    d.nombre,
    d.apellido;
end;

--EJECUCION--
exec info_pel


-- PROCEDIMIENTO PARA HACER UN INSERT DE UNA RESERVA --
create procedure insert_reserva
    @funcion_id int,
    @usuario_id int,
    @sala_silla_id int
    as
        begin
        if exists(select funcion_id, usuario_id, sala_silla_id from Reserva where funcion_id=@funcion_id and
        usuario_id=@usuario_id and sala_silla_id=@sala_silla_id)
            select 'La reserva ya existe'
        else
            begin
                insert into Reserva(funcion_id,usuario_id,sala_silla_id) values (@funcion_id,@usuario_id,@sala_silla_id)
                 select 'Registro de reserva exitoso'
            end
        end;

-- INSERT DE DATOS DE PRUEBA--
exec insert_reserva 13, 5, 8

-- VERIFICACION DEL INSERT --
select * FROM Reserva

-- VERIFICACION DE MENSAJE DE ERROR --
exec insert_reserva 13, 5, 8


-- PROCEDIMIENTO PARA VER TODA LA INFORMACION DE LA RESERVA --
create procedure info_reserva
as
begin
    select se.sede_nombre as Sede, p.titulo as Pelicula,sa.sala_nombre as Sala,s.nombre_silla as silla,
    t.precio as Valor_boleta,CONCAT(u.nombre,' ', u.apellido) as nombre_usuario, f.fecha as Fecha_funcion
    from Reserva as r
    inner join Funciones as f
    on r.funcion_id=f.funcion_id
    inner join Peliculas as p
    on f.pelicula_id=p.pelicula_id
    inner join Salas as sa
    on f.salas_id=sa.salas_id
    inner join Salas_Sillas as ss
    on r.sala_silla_id=ss.sala_silla_id
    inner join sillas as s
    on ss.silla_id = s.silla_id
    inner join sedes as se
    on ss.sede_id =se.sede_id
    inner join Tarifa as t
    on ss.sala_silla_id=t.sala_silla_id
    inner join Usuarios as u
    on r.usuario_id = u.usuario_id
end;

-- EJECUCION -- 
exec info_reserva

-- PROCEDIMIENTO PARA VER USUARIOS QUE AUN NO HACEN RESERVAS --
create procedure usua_sin_reser
as 
begin
    select u.*, r.reserva_id as Reserva
    from Usuarios as u
    left join Reserva as r
    on u.usuario_id= r.usuario_id
    where r.reserva_id is null
end;

-- EJECUCION --
exec usua_sin_reser