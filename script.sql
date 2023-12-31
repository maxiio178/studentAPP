USE [students]
GO
/****** Object:  Table [dbo].[Asistencia]    Script Date: 12-10-2023 2:47:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asistencia](
	[AsistenciaID] [int] IDENTITY(1,1) NOT NULL,
	[EstudianteID] [int] NULL,
	[MateriaID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AsistenciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 12-10-2023 2:47:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[EstudianteID] [int] NOT NULL,
	[Cedula] [varchar](15) NULL,
	[CorreoElectronico] [varchar](100) NULL,
	[Direccion] [varchar](255) NULL,
	[Nombre] [varchar](100) NULL,
	[Telefono] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[EstudianteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 12-10-2023 2:47:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materias](
	[MateriaID] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[HoraInicio] [time](7) NULL,
	[HoraFin] [time](7) NULL,
	[FechaInicio] [date] NULL,
	[FechaFin] [date] NULL,
	[ProfesorID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MateriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 12-10-2023 2:47:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesores](
	[ProfesorID] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Direccion] [varchar](255) NULL,
	[Correo] [varchar](100) NULL,
	[Celular] [varchar](15) NULL,
	[Cedula] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProfesorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Asistencia] ON 

INSERT [dbo].[Asistencia] ([AsistenciaID], [EstudianteID], [MateriaID]) VALUES (1, 1, 1)
INSERT [dbo].[Asistencia] ([AsistenciaID], [EstudianteID], [MateriaID]) VALUES (2, 1, 2)
INSERT [dbo].[Asistencia] ([AsistenciaID], [EstudianteID], [MateriaID]) VALUES (3, 2, 2)
INSERT [dbo].[Asistencia] ([AsistenciaID], [EstudianteID], [MateriaID]) VALUES (4, 3, 3)
INSERT [dbo].[Asistencia] ([AsistenciaID], [EstudianteID], [MateriaID]) VALUES (5, 4, 4)
INSERT [dbo].[Asistencia] ([AsistenciaID], [EstudianteID], [MateriaID]) VALUES (6, 5, 5)
SET IDENTITY_INSERT [dbo].[Asistencia] OFF
GO
INSERT [dbo].[Estudiantes] ([EstudianteID], [Cedula], [CorreoElectronico], [Direccion], [Nombre], [Telefono]) VALUES (1, N'123456789', N'estudiante1@example.com', N'Calle 1, Carrera 1', N'Marcos Torres', N'535-1111')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Cedula], [CorreoElectronico], [Direccion], [Nombre], [Telefono]) VALUES (2, N'234567890', N'estudiante2@example.com', N'Calle 2, Carrera 2', N'Julia Salamandra', N'545-2222')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Cedula], [CorreoElectronico], [Direccion], [Nombre], [Telefono]) VALUES (3, N'345678901', N'estudiante3@example.com', N'Calle 3, Carrera 3', N'Camila Paredes', N'444-3333')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Cedula], [CorreoElectronico], [Direccion], [Nombre], [Telefono]) VALUES (4, N'456789012', N'estudiante4@example.com', N'Calle 4, Carrera 4', N'Diomedes Diaz', N'565-4444')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Cedula], [CorreoElectronico], [Direccion], [Nombre], [Telefono]) VALUES (5, N'567890123', N'estudiante5@example.com', N'Calle 5, Carrera 5', N'Martin Villa', N'666-5555')
GO
INSERT [dbo].[Materias] ([MateriaID], [Nombre], [HoraInicio], [HoraFin], [FechaInicio], [FechaFin], [ProfesorID]) VALUES (1, N'Materia 1', CAST(N'09:00:00' AS Time), CAST(N'11:00:00' AS Time), CAST(N'2023-10-10' AS Date), CAST(N'2023-11-10' AS Date), 1)
INSERT [dbo].[Materias] ([MateriaID], [Nombre], [HoraInicio], [HoraFin], [FechaInicio], [FechaFin], [ProfesorID]) VALUES (2, N'Materia 2', CAST(N'12:00:00' AS Time), CAST(N'14:00:00' AS Time), CAST(N'2023-10-10' AS Date), CAST(N'2023-11-10' AS Date), 2)
INSERT [dbo].[Materias] ([MateriaID], [Nombre], [HoraInicio], [HoraFin], [FechaInicio], [FechaFin], [ProfesorID]) VALUES (3, N'Materia 3', CAST(N'15:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(N'2023-10-10' AS Date), CAST(N'2023-11-10' AS Date), 3)
INSERT [dbo].[Materias] ([MateriaID], [Nombre], [HoraInicio], [HoraFin], [FechaInicio], [FechaFin], [ProfesorID]) VALUES (4, N'Materia 4', CAST(N'09:00:00' AS Time), CAST(N'11:00:00' AS Time), CAST(N'2023-10-10' AS Date), CAST(N'2023-11-10' AS Date), 4)
INSERT [dbo].[Materias] ([MateriaID], [Nombre], [HoraInicio], [HoraFin], [FechaInicio], [FechaFin], [ProfesorID]) VALUES (5, N'Materia 5', CAST(N'12:00:00' AS Time), CAST(N'14:00:00' AS Time), CAST(N'2023-10-10' AS Date), CAST(N'2023-11-10' AS Date), 5)
GO
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Direccion], [Correo], [Celular], [Cedula]) VALUES (1, N'Profesor 1', N'Calle A, Carrera X', N'profesor1@example.com', N'555-6666', N'11111111')
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Direccion], [Correo], [Celular], [Cedula]) VALUES (2, N'Profesor 2', N'Calle B, Carrera Y', N'profesor2@example.com', N'555-7777', N'22222222')
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Direccion], [Correo], [Celular], [Cedula]) VALUES (3, N'Profesor 3', N'Calle C, Carrera Z', N'profesor3@example.com', N'555-8888', N'33333333')
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Direccion], [Correo], [Celular], [Cedula]) VALUES (4, N'Profesor 4', N'Calle D, Carrera W', N'profesor4@example.com', N'555-9999', N'44444444')
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Direccion], [Correo], [Celular], [Cedula]) VALUES (5, N'Profesor 5', N'Calle E, Carrera V', N'profesor5@example.com', N'555-0000', N'55555555')
GO
ALTER TABLE [dbo].[Asistencia]  WITH CHECK ADD FOREIGN KEY([EstudianteID])
REFERENCES [dbo].[Estudiantes] ([EstudianteID])
GO
ALTER TABLE [dbo].[Asistencia]  WITH CHECK ADD FOREIGN KEY([MateriaID])
REFERENCES [dbo].[Materias] ([MateriaID])
GO
ALTER TABLE [dbo].[Materias]  WITH CHECK ADD FOREIGN KEY([ProfesorID])
REFERENCES [dbo].[Profesores] ([ProfesorID])
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEstudiante]    Script Date: 12-10-2023 2:47:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarEstudiante]
    @EstudianteID INT,
    @Cedula VARCHAR(15),
    @CorreoElectronico VARCHAR(100),
    @Direccion VARCHAR(255),
    @Nombre VARCHAR(100),
    @Telefono VARCHAR(15)
AS
BEGIN
    UPDATE Estudiantes
    SET Cedula = @Cedula,
        CorreoElectronico = @CorreoElectronico,
        Direccion = @Direccion,
        Nombre = @Nombre,
        Telefono = @Telefono
    WHERE EstudianteID = @EstudianteID
END
GO
/****** Object:  StoredProcedure [dbo].[AgregarMateriaAEstudiante]    Script Date: 12-10-2023 2:47:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarMateriaAEstudiante]
    @EstudianteID INT,
    @MateriaID INT
AS
BEGIN
    INSERT INTO Asistencia (EstudianteID, MateriaID)
    VALUES (@EstudianteID, @MateriaID)
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarEstudiante]    Script Date: 12-10-2023 2:47:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BorrarEstudiante]
    @EstudianteID INT
AS
BEGIN
    DELETE FROM Estudiantes
    WHERE EstudianteID = @EstudianteID
END
GO
/****** Object:  StoredProcedure [dbo].[CrearEstudiante]    Script Date: 12-10-2023 2:47:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CrearEstudiante]
    @Cedula VARCHAR(15),
    @CorreoElectronico VARCHAR(100),
    @Direccion VARCHAR(255),
    @Nombre VARCHAR(100),
    @Telefono VARCHAR(15)
AS
BEGIN
    INSERT INTO Estudiantes (Cedula, CorreoElectronico, Direccion, Nombre, Telefono)
    VALUES (@Cedula, @CorreoElectronico, @Direccion, @Nombre, @Telefono)
END
GO
/****** Object:  StoredProcedure [dbo].[CrearMateriaConProfesor]    Script Date: 12-10-2023 2:47:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CrearMateriaConProfesor]
    @NombreMateria VARCHAR(100),
    @HoraInicio TIME,
    @HoraFin TIME,
    @FechaInicio DATE,
    @FechaFin DATE,
    @ProfesorID INT
AS
BEGIN
    INSERT INTO Materias (Nombre, HoraInicio, HoraFin, FechaInicio, FechaFin, ProfesorID)
    VALUES (@NombreMateria, @HoraInicio, @HoraFin, @FechaInicio, @FechaFin, @ProfesorID)
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarMateriaDeEstudiante]    Script Date: 12-10-2023 2:47:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarMateriaDeEstudiante]
    @EstudianteID INT,
    @MateriaID INT
AS
BEGIN
    DELETE FROM Asistencia
    WHERE EstudianteID = @EstudianteID AND MateriaID = @MateriaID
END
GO
/****** Object:  StoredProcedure [dbo].[ListarEstudiantes]    Script Date: 12-10-2023 2:47:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarEstudiantes]
AS
BEGIN
    SELECT * FROM Estudiantes
END
GO
/****** Object:  StoredProcedure [dbo].[VerMateriasDeEstudiante]    Script Date: 12-10-2023 2:47:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VerMateriasDeEstudiante]
    @EstudianteID INT
AS
BEGIN
    SELECT Materias.*
    FROM Materias
    INNER JOIN Asistencia ON Materias.MateriaID = Asistencia.MateriaID
    WHERE Asistencia.EstudianteID = @EstudianteID
END
GO
