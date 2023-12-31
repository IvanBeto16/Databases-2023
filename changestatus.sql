USE [IvbetoProgramacionNCapas]
GO
/****** Object:  StoredProcedure [dbo].[UsuarioGetAll]    Script Date: 7/9/2023 17:36:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[UsuarioGetAll]
AS
SELECT Usuario.IdUsuario,
	Usuario.UserName,
	Usuario.Imagen, 
	Usuario.Nombre,
	Usuario.ApellidoPaterno,
	Usuario.ApellidoMaterno,
	Usuario.FechaNacimiento,
	Usuario.Email,
	Usuario.[Password],
	Usuario.Telefono,
	Usuario.Celular,
	Usuario.Curp,
	Usuario.Sexo,
	Rol.IdRol, 
	Rol.Nombre AS NombreRol,
	Direccion.IdDireccion,
	Direccion.Calle,
	Direccion.NumeroInterior,
	Direccion.NumeroExterior,
	Colonia.IdColonia,
	Colonia.Nombre AS NombreColonia,
	Colonia.CodigoPostal,
	Municipio.IdMunicipio,
	Municipio.Nombre AS NombreMunicipio,
	Estado.IdEstado,
	Estado.Nombre AS NombreEstado,
	Pais.IdPais,
	Pais.Nombre AS NombrePais
FROM Usuario 
INNER JOIN Rol ON Usuario.IdRol = Rol.IdRol
INNER JOIN Direccion ON Usuario.IdUsuario = Direccion.IdUsuario
INNER JOIN Colonia ON Direccion.IdColonia = Colonia.IdColonia
INNER JOIN Municipio ON	Colonia.IdMunicipio = Municipio.IdMunicipio
INNER JOIN Estado ON Municipio.IdEstado = Estado.IdEstado
INNER JOIN Pais ON Estado.IdPais = Pais.IdPais

ALTER PROCEDURE [dbo].[UsuarioGetById] 
@IdUsuario INT
AS
SELECT Usuario.IdUsuario,
	Usuario.Status,
	Usuario.UserName,
	Usuario.Imagen, 
	Usuario.Nombre,
	Usuario.ApellidoPaterno,
	Usuario.ApellidoMaterno,
	Usuario.FechaNacimiento,
	Usuario.Email,
	Usuario.[Password],
	Usuario.Telefono,
	Usuario.Celular,
	Usuario.Curp,
	Usuario.Sexo,
	Rol.IdRol, 
	Rol.Nombre AS NombreRol,
	Direccion.IdDireccion,
	Direccion.Calle,
	Direccion.NumeroInterior,
	Direccion.NumeroExterior,
	Colonia.IdColonia,
	Colonia.Nombre AS NombreColonia,
	Colonia.CodigoPostal,
	Municipio.IdMunicipio,
	Municipio.Nombre AS NombreMunicipio,
	Estado.IdEstado,
	Estado.Nombre AS NombreEstado,
	Pais.IdPais,
	Pais.Nombre AS NombrePais
FROM Usuario 
INNER JOIN Rol ON Usuario.IdRol = Rol.IdRol
INNER JOIN Direccion ON Usuario.IdUsuario = Direccion.IdUsuario
INNER JOIN Colonia ON Direccion.IdColonia = Colonia.IdColonia
INNER JOIN Municipio ON	Colonia.IdMunicipio = Municipio.IdMunicipio
INNER JOIN Estado ON Municipio.IdEstado = Estado.IdEstado
INNER JOIN Pais ON Estado.IdPais = Pais.IdPais
WHERE Usuario.IdUsuario = @IdUsuario

CREATE PROCEDURE UsuarioChangeStatus
@Status BIT,
@IdUsuario INT
AS
	UPDATE Usuario SET Status = @Status
	WHERE IdUsuario = @IdUsuario

UsuarioGetAll

UPDATE Usuario SET Status = 1
	WHERE IdUsuario = 4