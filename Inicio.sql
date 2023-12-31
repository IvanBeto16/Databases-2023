CREATE DATABASE IvbetoProgramacionNCapas

--USE DATABASE IvbetoProgramacionNCapas

CREATE TABLE Usuario(
  IdUsuario INT PRIMARY KEY IDENTITY,
  Nombre VARCHAR(50) NOT NULL,
  ApellidoPaterno VARCHAR(50) NOT NULL,
  ApellidoMaterno VARCHAR(50) NULL,
  FechaNacimiento DATE NOT NULL,
  Direccion VARCHAR(100) NOT NULL,
  Nacionalidad VARCHAR(70) NOT NULL,
  EstadoCivil VARCHAR(20) NULL
)

  --Para insertar en todos los campos de la tabla
INSERT INTO Usuario Values('Terrence','Buonanoitte','Dupuy','1999-05-13','Mexico DF','mexicano','soltero')
INSERT INTO Usuario VALUES('Anastasiya','Pereira','Volkan','1999-10-16','Ibiza','Espa�ola','Soltera')
INSERT INTO Usuario VALUES('Veronica','Zamora','Perez','1999-12-14','Coapa','mexicana','Soltera')


SELECT * FROM USUARIO

SELECT IdUsuario, Nombre, ApellidoPaterno, ApellidoMaterno, FechaNacimiento, Direccion, Nacionalidad, EstadoCivil FROM Usuario


UPDATE Usuario 
SET Nombre=@Nombre, ApellidoPaterno=@ApellidoPaterno, ApellidoMaterno=@ApellidoMaterno, 
FechaNacimiento=@FechaNacimiento, Direccion=@Direccion, Nacionalidad=@Nacionalidad, EstadoCivil=@EstadoCivil 
WHERE IdUsuario = @IdUsuario
