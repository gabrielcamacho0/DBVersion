USE [dbversion]
GO
/****** Object:  Table [dbo].[Ambiente]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ambiente](
	[IdAmbiente] [int] IDENTITY(1,1) NOT NULL,
	[NombreAmbiente] [nvarchar](150) NOT NULL,
	[Estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAmbiente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaseDatos]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaseDatos](
	[IdBaseDatos] [int] IDENTITY(1,1) NOT NULL,
	[NombreBaseDatos] [nvarchar](150) NOT NULL,
	[Estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdBaseDatos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Migracion]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Migracion](
	[IdMigracion] [int] IDENTITY(1,1) NOT NULL,
	[FechaSolicitud] [date] NOT NULL,
	[FechaMigracion] [date] NULL,
	[Script] [nvarchar](max) NOT NULL,
	[NuevosCambios] [nvarchar](max) NULL,
	[ObservacionesSolicitud] [nvarchar](max) NULL,
	[ObservacionesMigracion] [nvarchar](max) NULL,
	[Estado] [bit] NOT NULL,
	[EstadoMigracion] [bit] NOT NULL,
	[MigradoDesa] [bit] NOT NULL,
	[MigradoPrue] [bit] NOT NULL,
	[MigradoCapa] [bit] NOT NULL,
	[MigradoProd] [bit] NOT NULL,
	[IdUsuarioSolicita] [int] NOT NULL,
	[IdUsuarioMigra] [int] NULL,
	[IdSolucion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMigracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modificacion]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modificacion](
	[IdModificacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[NombreObjetoModificado] [nvarchar](150) NOT NULL,
	[Requerimiento] [nvarchar](150) NULL,
	[Observacion] [nvarchar](max) NULL,
	[Aprobado] [bit] NOT NULL,
	[Estado] [bit] NOT NULL,
	[IdTipoModificacion] [int] NOT NULL,
	[IdObjetoModificado] [int] NOT NULL,
	[IdBaseDatos] [int] NOT NULL,
	[IdAmbiente] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdSolucion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdModificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ObjetoModificado]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ObjetoModificado](
	[IdObjetoModificado] [int] IDENTITY(1,1) NOT NULL,
	[NombreObjetoModificado] [nvarchar](150) NOT NULL,
	[Estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdObjetoModificado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Solucion]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Solucion](
	[IdSolucion] [int] IDENTITY(1,1) NOT NULL,
	[NombreSolucion] [nvarchar](150) NOT NULL,
	[Identificador] [nvarchar](150) NULL,
	[Estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoModificacion]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoModificacion](
	[IdTipoModificacion] [int] IDENTITY(1,1) NOT NULL,
	[NombreTipoModificacion] [nvarchar](150) NOT NULL,
	[Estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoModificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [nvarchar](150) NOT NULL,
	[Logueo] [nvarchar](150) NOT NULL,
	[Clave] [nvarchar](max) NOT NULL,
	[Estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ambiente] ON 

INSERT [dbo].[Ambiente] ([IdAmbiente], [NombreAmbiente], [Estado]) VALUES (1, N'DESA', 1)
INSERT [dbo].[Ambiente] ([IdAmbiente], [NombreAmbiente], [Estado]) VALUES (2, N'PRUE', 1)
INSERT [dbo].[Ambiente] ([IdAmbiente], [NombreAmbiente], [Estado]) VALUES (3, N'CAPA', 1)
INSERT [dbo].[Ambiente] ([IdAmbiente], [NombreAmbiente], [Estado]) VALUES (4, N'PROD', 1)
SET IDENTITY_INSERT [dbo].[Ambiente] OFF
GO
SET IDENTITY_INSERT [dbo].[BaseDatos] ON 

INSERT [dbo].[BaseDatos] ([IdBaseDatos], [NombreBaseDatos], [Estado]) VALUES (1, N'BIT_V2', 1)
INSERT [dbo].[BaseDatos] ([IdBaseDatos], [NombreBaseDatos], [Estado]) VALUES (2, N'BIT_V3', 1)
INSERT [dbo].[BaseDatos] ([IdBaseDatos], [NombreBaseDatos], [Estado]) VALUES (3, N'INTRANET_V2_NE', 1)
INSERT [dbo].[BaseDatos] ([IdBaseDatos], [NombreBaseDatos], [Estado]) VALUES (4, N'ARGON', 1)
SET IDENTITY_INSERT [dbo].[BaseDatos] OFF
GO
SET IDENTITY_INSERT [dbo].[Modificacion] ON 

INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (1, N'Se añanden variables al SP', CAST(N'2024-01-24' AS Date), N'SP_CO_Usuario_Modulo', N'S1R13', N'', 1, 1, 1, 1, 4, 1, 3, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (2, N'Se añanden variables al SP', CAST(N'2024-01-24' AS Date), N'SP_CO_Usuario_ElementoModulo', N'S1R13', N'', 1, 1, 1, 1, 4, 1, 3, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (3, N'Se añade Action 11 al SP', CAST(N'2024-01-24' AS Date), N'SP_CO_Modulo', N'S1R13', N'', 1, 1, 1, 1, 4, 1, 3, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (4, N'Se añade Action 4 al SP', CAST(N'2024-01-24' AS Date), N'SP_CO_Usuario_Modulo', N'S1R13', N'', 1, 1, 1, 1, 4, 1, 3, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (5, N'Se añade Action 5 al SP', CAST(N'2024-01-24' AS Date), N'SP_CO_Usuario_Modulo', N'S1R13', N'', 1, 1, 1, 1, 4, 1, 3, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (6, N'Se añade Action 4 al SP', CAST(N'2024-01-24' AS Date), N'SP_CO_Usuario_ElementoModulo', N'S1R13', N'', 1, 1, 1, 1, 4, 1, 3, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (7, N'Se añade Action 12 al SP', CAST(N'2024-01-24' AS Date), N'SP_CO_Modulo', N'S1R13', N'', 1, 1, 1, 1, 4, 1, 3, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (8, N'Se modifica disparador', CAST(N'2024-01-24' AS Date), N'TR_CO_Perfil_Modulo_Delete', N'S1R13', N'', 1, 1, 2, 3, 4, 1, 2, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (9, N'Se modifica disparador', CAST(N'2024-01-24' AS Date), N'TR_CO_Perfil_ElementoModulo_Delete', N'S1R13', N'', 1, 1, 2, 3, 4, 1, 2, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (10, N'Se modifica disparador', CAST(N'2024-01-24' AS Date), N'TR_CO_Usuario_Insert', N'S1R13', N'', 1, 1, 2, 3, 4, 1, 2, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (11, N'Se modifica Action 9', CAST(N'2024-01-24' AS Date), N'SP_CO_Usuario', N'S1R2', N'', 1, 1, 2, 1, 4, 1, 4, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (12, N'Se elimina el Action 8', CAST(N'2024-01-24' AS Date), N'SP_CO_Usuario', N'S1R2', N'', 1, 1, 2, 1, 4, 1, 4, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (13, N'Se añade Action 6
', CAST(N'2024-01-24' AS Date), N'SP_CO_RegistroSesion', N'S1R2', N'', 1, 1, 1, 1, 4, 1, 4, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (14, N'Se modifica el nombre del SP_CO_ContadorSesiones a SP_CO_ContadorSesion
', CAST(N'2024-01-24' AS Date), N'SP_CO_ContadorSesion', N'S1R2', N'', 1, 1, 2, 1, 4, 1, 4, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (15, N'Se modifica el nombre de la tabla CO_ContadorSesiones a CO_ContadorSesion
', CAST(N'2024-01-24' AS Date), N'CO_ContadorSesion', N'S1R2', N'', 1, 1, 2, 2, 4, 1, 4, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (16, N'Se añade Action 6
', CAST(N'2024-01-26' AS Date), N'SP_CO_ContadorSesion', N'S1R3', N'', 1, 1, 1, 1, 4, 1, 4, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (17, N'Se elimina el Action 20
', CAST(N'2024-01-26' AS Date), N'SP_CO_Usuario', N'S1R4', N'', 1, 1, 2, 1, 4, 1, 4, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (18, N'Se actualiza el Action 4
', CAST(N'2024-02-01' AS Date), N'SP_CO_RegistroSesion', N'BF1S1R1', N'', 1, 1, 2, 1, 4, 1, 4, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (19, N'Se elimina el Action 5
', CAST(N'2024-02-01' AS Date), N'SP_CO_RegistroSesion', N'BF1S1R1', N'', 1, 1, 2, 1, 4, 1, 4, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (20, N'se elimina el Action 6
', CAST(N'2024-02-01' AS Date), N'SP_CO_RegistroSesion', N'BF1S1R1', N'', 1, 1, 2, 1, 4, 1, 4, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (21, N'Se actualiza el Action 1
', CAST(N'2024-02-01' AS Date), N'SP_CO_RegistroSesion', N'BF1S1R1', N'', 1, 1, 2, 1, 4, 1, 4, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (22, N'Se quitan variables 2 objetos de BD (@Navegador , @ResolPantalla)
', CAST(N'2024-02-01' AS Date), N'SP_CO_RegistroSesion', N'BF1S1R1', N'', 1, 1, 2, 1, 4, 1, 4, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (23, N'Se actuliza el Trigger de la tabla CO_RegistroSesion
', CAST(N'2024-02-01' AS Date), N'CO_RegistroSesion', N'BF1S1R1', N'', 1, 1, 2, 3, 4, 1, 4, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (24, N'Se crea SP_CO_Sede con los Action 0,1,2,3,4,5
', CAST(N'2024-02-06' AS Date), N'SP_CO_Sede', N'S2R12', N'', 1, 1, 1, 1, 4, 1, 3, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (25, N'Se añade Action 13 al SP
', CAST(N'2024-02-07' AS Date), N'SP_CO_Modulo', N'S2R13', N'', 1, 1, 1, 1, 4, 1, 5, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (26, N'Se crea SP_CO_Ubicacion con los Action 0,1,2,3,4,5,6
', CAST(N'2024-02-08' AS Date), N'SP_CO_Ubicacion', N'S2R8', N'', 1, 1, 1, 1, 4, 1, 3, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (27, N'Se crea SP_CO_Coordenada con los Action 0,1,2,3
', CAST(N'2024-02-12' AS Date), N'SP_CO_Coordenada', N'S23R2', N'', 1, 1, 1, 1, 4, 1, 3, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (28, N'Se añade Action 21 al SP
', CAST(N'2024-02-14' AS Date), N'SP_CO_Usuario', N'S2R14', N'', 1, 1, 1, 1, 4, 1, 5, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (29, N'Se añade Action 9 al SP
', CAST(N'2024-02-14' AS Date), N'SP_CO_Perfil', N'S2R15', N'', 1, 1, 1, 1, 4, 1, 5, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (30, N'Se añade Action 6 al SP
', CAST(N'2024-02-14' AS Date), N'SP_CO_Sede', N'S2R16', N'', 1, 1, 1, 1, 4, 1, 5, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (31, N'Se añade Action 7 al SP
', CAST(N'2024-02-14' AS Date), N'SP_CO_Ubicacion', N'S2R17', N'', 1, 1, 1, 1, 4, 1, 5, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (32, N'*Se modifica Action 12
*Se crea Action 14
*Se crea Action 15', CAST(N'2024-03-01' AS Date), N'SP_CO_Modulo', N'', N'Este cambio es un piloto para la eliminación de los Niveles en el módulo de Configuración Modular.', 0, 1, 1, 1, 4, 1, 3, 1)
INSERT [dbo].[Modificacion] ([IdModificacion], [Descripcion], [FechaModificacion], [NombreObjetoModificado], [Requerimiento], [Observacion], [Aprobado], [Estado], [IdTipoModificacion], [IdObjetoModificado], [IdBaseDatos], [IdAmbiente], [IdUsuario], [IdSolucion]) VALUES (33, N'Se ajusta el ACTION 7 para el correcto funcionamiento y presentación a nivel de interfaz de los módulos y elementos para perfilar.', CAST(N'2024-03-04' AS Date), N'SP_CO_Modulo', N'S3R11-12', N'', 0, 1, 2, 1, 4, 1, 4, 1)
SET IDENTITY_INSERT [dbo].[Modificacion] OFF
GO
SET IDENTITY_INSERT [dbo].[ObjetoModificado] ON 

INSERT [dbo].[ObjetoModificado] ([IdObjetoModificado], [NombreObjetoModificado], [Estado]) VALUES (1, N'PROCEDIMIENTO ALMACENADO', 1)
INSERT [dbo].[ObjetoModificado] ([IdObjetoModificado], [NombreObjetoModificado], [Estado]) VALUES (2, N'TABLA', 1)
INSERT [dbo].[ObjetoModificado] ([IdObjetoModificado], [NombreObjetoModificado], [Estado]) VALUES (3, N'TRIGGER', 1)
INSERT [dbo].[ObjetoModificado] ([IdObjetoModificado], [NombreObjetoModificado], [Estado]) VALUES (4, N'JOB', 1)
INSERT [dbo].[ObjetoModificado] ([IdObjetoModificado], [NombreObjetoModificado], [Estado]) VALUES (5, N'VISTA', 1)
SET IDENTITY_INSERT [dbo].[ObjetoModificado] OFF
GO
SET IDENTITY_INSERT [dbo].[Solucion] ON 

INSERT [dbo].[Solucion] ([IdSolucion], [NombreSolucion], [Identificador], [Estado]) VALUES (1, N'ARGÓN', N'[PRO_1]', 1)
SET IDENTITY_INSERT [dbo].[Solucion] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoModificacion] ON 

INSERT [dbo].[TipoModificacion] ([IdTipoModificacion], [NombreTipoModificacion], [Estado]) VALUES (1, N'CREACIÓN', 1)
INSERT [dbo].[TipoModificacion] ([IdTipoModificacion], [NombreTipoModificacion], [Estado]) VALUES (2, N'MODIFICACIÓN', 1)
SET IDENTITY_INSERT [dbo].[TipoModificacion] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [NombreUsuario], [Logueo], [Clave], [Estado]) VALUES (1, N'DIEGO CÓRDOBA', N'COORDINADOR.DESARROLLO', N'879B46A5CB1B4BF1965A322E4CBE1C2F', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [NombreUsuario], [Logueo], [Clave], [Estado]) VALUES (2, N'CRISTIAN FLOREZ', N'ANALISTA.DESARROLLO', N'C08118D967F5A7B0650D4A33C57411D6', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [NombreUsuario], [Logueo], [Clave], [Estado]) VALUES (3, N'GABRIEL CAMACHO', N'ASISTENTE.DESARROLLO1', N'E1777459AF99F6624ED7F395D840F9E5', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [NombreUsuario], [Logueo], [Clave], [Estado]) VALUES (4, N'LAURA OLIVEROS', N'ASISTENTE.DESARROLLO2', N'0A9AD8106F22FC24EA1445679CAE2301', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [NombreUsuario], [Logueo], [Clave], [Estado]) VALUES (5, N'FAUNER ECHEVERRY', N'PASANTE.DESARROLLO1', N'437C709C8BF16AC4DBA9623E07FC0630', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [NombreUsuario], [Logueo], [Clave], [Estado]) VALUES (6, N'JAIDER DONCEL', N'PASANTE.DESARROLLO2', N'E10ADC3949BA59ABBE56E057F20F883E', 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Migracion] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Migracion] ADD  DEFAULT ((1)) FOR [EstadoMigracion]
GO
ALTER TABLE [dbo].[Migracion] ADD  DEFAULT ((0)) FOR [MigradoDesa]
GO
ALTER TABLE [dbo].[Migracion] ADD  DEFAULT ((0)) FOR [MigradoPrue]
GO
ALTER TABLE [dbo].[Migracion] ADD  DEFAULT ((0)) FOR [MigradoCapa]
GO
ALTER TABLE [dbo].[Migracion] ADD  DEFAULT ((0)) FOR [MigradoProd]
GO
ALTER TABLE [dbo].[Modificacion] ADD  DEFAULT ((0)) FOR [Aprobado]
GO
ALTER TABLE [dbo].[Modificacion] ADD  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  StoredProcedure [dbo].[SP_Ambiente]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Ambiente]

@Action INT = NULL,
@IdAmbiente INT = NULL,
@NombreAmbiente NVARCHAR(150) = NULL,
@Estado BIT = NULL

AS

BEGIN 

	--CARGAR AMBIENTES
	IF @Action = 0
	BEGIN
		SELECT
			*
		FROM
			dbversion.dbo.Ambiente
		WHERE
			Estado = 1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_BaseDatos]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BaseDatos]

@Action INT = NULL,
@IdBaseDatos INT = NULL,
@NombreBaseDatos NVARCHAR(150) = NULL,
@Estado BIT = NULL

AS

BEGIN 

	--CARGAR BASES DE DATOS
	IF @Action = 0
	BEGIN
		SELECT
			*
		FROM
			dbversion.dbo.BaseDatos
		WHERE
			Estado = 1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Migracion]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Migracion]

@Action INT = NULL,
@IdMigracion INT = NULL,
@FechaSolicitud DATE = NULL,
@FechaMigracion DATE = NULL,
@Script NVARCHAR(MAX) = NULL,
@NuevosCambios NVARCHAR(MAX) = NULL,
@ObservacionesSolicitud NVARCHAR(MAX) = NULL,
@ObservacionesMigracion NVARCHAR(MAX) = NULL,
@Estado BIT = NULL,
@EstadoMigracion BIT = NULL,
@MigradoDesa BIT = NULL,
@MigradoPrue BIT = NULL,
@MigradoCapa BIT = NULL,
@MigradoProd BIT = NULL,
@IdUsuarioSolicita INT = NULL,
@IdUsuarioMigra INT = NULL,
@IdSolucion INT = NULL

AS

BEGIN

	--CARGAR LAS MIGRACIONES QUE NO HAN SIDO CERRADAS
	IF @Action = 0
	BEGIN
		SELECT
			M.IdMigracion,
			S.Identificador,
			S.NombreSolucion,
			M.FechaSolicitud
		FROM
			dbversion.dbo.Migracion M
			INNER JOIN dbversion.dbo.Solucion S ON M.IdSolucion = S.IdSolucion
		WHERE
			M.Estado = 1
			AND M.EstadoMigracion = 1
			AND M.IdSolucion = @IdSolucion
	END

	--CARGAR LAS MIGRACIONES QUE HAN SIDO CERRADAS (HISTORIAL DE MIGRACIONES)
	IF @Action = 1
	BEGIN
		SELECT
			M.IdMigracion,
			S.Identificador,
			S.NombreSolucion,
			M.FechaMigracion
		FROM
			dbversion.dbo.Migracion M
			INNER JOIN dbversion.dbo.Solucion S ON M.IdSolucion = S.IdSolucion
		WHERE
			M.Estado = 1
			AND M.EstadoMigracion != 1
			AND M.IdSolucion = @IdSolucion
	END

	--VISUALIZAR MIGRACIÓN INDIVIDUAL
	IF @Action = 2
	BEGIN
		SELECT
			M.IdMigracion,
			S.Identificador,
			S.NombreSolucion,
			M.FechaMigracion,
			M.Script,
			M.NuevosCambios,
			M.ObservacionesSolicitud,
			M.ObservacionesMigracion,
			M.MigradoDesa,
			M.MigradoPrue,
			M.MigradoCapa,
			M.MigradoProd
		FROM
			dbversion.dbo.Migracion M
			INNER JOIN dbversion.dbo.Solucion S ON M.IdSolucion = S.IdSolucion
		WHERE
			M.IdMigracion = @IdMigracion
	END

	--CARGAR VISTA DE EDITAR MIGRACIÓN INDIVIDUAL
	IF @Action = 3
	BEGIN
		SELECT
			M.IdMigracion,
			S.Identificador,
			S.NombreSolucion,
			M.FechaMigracion,
			M.Script,
			M.NuevosCambios,
			M.ObservacionesSolicitud,
			M.ObservacionesMigracion,
			M.MigradoDesa,
			M.MigradoPrue,
			M.MigradoCapa,
			M.MigradoProd,
			M.EstadoMigracion
		FROM
			dbversion.dbo.Migracion M
			INNER JOIN dbversion.dbo.Solucion S ON M.IdSolucion = S.IdSolucion
		WHERE
			M.IdMigracion = @IdMigracion
	END

	--AGREGAR UNA MIGRACIÓN
	IF @Action = 4
	BEGIN
		INSERT INTO 
			dbversion.dbo.Migracion
		VALUES
			(
			GETDATE(),
			NULL,
			@Script,
			NULL,
			@ObservacionesSolicitud,
			NULL,
			1,
			1,
			@MigradoDesa,
			@MigradoPrue,
			@MigradoCapa,
			@MigradoProd,
			@IdUsuarioSolicita,
			NULL,
			@IdSolucion
			)
	END

	--ACTUALIZAR UNA MIGRACIÓN
	IF @Action = 5
	BEGIN
		UPDATE
			dbversion.dbo.Migracion
		SET
			FechaSolicitud = GETDATE(),
			Script = @Script,
			NuevosCambios = @NuevosCambios,
			ObservacionesSolicitud = @ObservacionesSolicitud,
			MigradoDesa = @MigradoDesa,
			MigradoPrue = @MigradoPrue,
			MigradoCapa = @MigradoCapa,
			MigradoProd = @MigradoProd
		WHERE
			IdMigracion = @IdMigracion
	END

	--ELIMINAR UNA MIGRACIÓN
	IF @Action = 6
	BEGIN
		UPDATE
			dbversion.dbo.Migracion
		SET
			Estado = 0
		WHERE
			IdMigracion = @IdMigracion
	END

	--MIGRADO A DESA
	IF @Action = 7
	BEGIN
		UPDATE
			dbversion.dbo.Migracion
		SET
			MigradoDesa = @MigradoDesa
		WHERE
			IdMigracion = @IdMigracion
	END

	--MIGRADO A PRUE
	IF @Action = 8
	BEGIN
		UPDATE
			dbversion.dbo.Migracion
		SET
			MigradoPrue = @MigradoPrue
		WHERE
			IdMigracion = @IdMigracion
	END

	--MIGRADO A CAPA
	IF @Action = 9
	BEGIN
		UPDATE
			dbversion.dbo.Migracion
		SET
			MigradoCapa = @MigradoCapa
		WHERE
			IdMigracion = @IdMigracion
	END

	--MIGRADO A PRODUCCIÓN
	IF @Action = 10
	BEGIN
		UPDATE
			dbversion.dbo.Migracion
		SET
			MigradoProd = @MigradoProd
		WHERE
			IdMigracion = @IdMigracion
	END
	
	--GUARDAR COMENTARIOS DE MIGRACIÓN
	IF @Action = 11
	BEGIN
		UPDATE
			dbversion.dbo.Migracion
		SET
			ObservacionesMigracion = @ObservacionesMigracion
		WHERE
			IdMigracion = @IdMigracion
	END

	--CERRAR MIGRACIÓN
	IF @Action = 12
	BEGIN
		UPDATE
			dbversion.dbo.Migracion
		SET
			EstadoMigracion = 0,
			FechaMigracion = @FechaMigracion,
			ObservacionesMigracion = @ObservacionesMigracion,
			IdUsuarioMigra = @IdUsuarioMigra
		WHERE
			IdMigracion = @IdMigracion
	END

	--CARGAR MIGRACIONES FILTRADAS ACTIVAS
	IF @Action = 13
	SELECT
			M.IdMigracion,
			S.Identificador,
			S.NombreSolucion,
			M.FechaSolicitud
		FROM
			dbversion.dbo.Migracion M
			INNER JOIN dbversion.dbo.Solucion S ON M.IdSolucion = S.IdSolucion
		WHERE
			M.Estado = 1
			AND M.EstadoMigracion = 1
			AND M.IdSolucion = @IdSolucion AND
			M.IdMigracion LIKE 
				CASE 
					WHEN @IdMigracion IS NULL THEN ISNULL(@IdMigracion, '%') 
					WHEN @IdMigracion < 1 THEN M.IdMigracion
					ELSE @IdMigracion 
				END
			AND M.FechaSolicitud = CASE WHEN @FechaSolicitud = '01-01-1900' THEN M.FechaSolicitud ELSE @FechaSolicitud END
	
	--CARGAR MIGRACIONES FILTRADAS CERRADAS
	IF @Action = 14
	SELECT
			M.IdMigracion,
			S.Identificador,
			S.NombreSolucion,
			M.FechaMigracion
		FROM
			dbversion.dbo.Migracion M
			INNER JOIN dbversion.dbo.Solucion S ON M.IdSolucion = S.IdSolucion
		WHERE
			M.Estado = 1
			AND M.EstadoMigracion = 0
			AND M.IdSolucion = @IdSolucion AND
			M.IdMigracion LIKE 
				CASE 
					WHEN @IdMigracion IS NULL THEN ISNULL(@IdMigracion, '%') 
					WHEN @IdMigracion < 1 THEN M.IdMigracion
					ELSE @IdMigracion 
				END
			AND M.FechaMigracion = CASE WHEN @FechaMigracion = '01-01-1900' THEN M.FechaMigracion ELSE @FechaMigracion END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Modificacion]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Modificacion]

@Action INT = NULL,
@IdModificacion INT = NULL,
@Descripcion NVARCHAR(MAX) = NULL,
@FechaModificacion DATETIME = NULL,
@NombreObjetoModificado NVARCHAR(150) = NULL,
@Requerimiento NVARCHAR(150) = NULL,
@Observacion NVARCHAR(MAX) = NULL,
@Aprobado BIT = NULL,
@Estado BIT = NULL,
@IdTipoModificacion INT = NULL,
@IdObjetoModificado INT = NULL,
@IdBaseDatos INT = NULL,
@IdAmbiente INT = NULL,
@IdUsuario INT = NULL,
@IdSolucion INT = NULL

AS

BEGIN 

	--CARGAR MODIFICACIONES AÚN NO APROBADAS POR EL TESTER
	IF @Action = 0
	BEGIN
		SELECT
			M.IdModificacion,
			M.Descripcion,
			M.FechaModificacion,
			M.NombreObjetoModificado,
			M.Requerimiento,
			M.Observacion,
			M.Aprobado,
			M.Estado,
			TM.NombreTipoModificacion,
			OM.NombreObjetoModificado AS 'NombreObjetoModificadoOM',
			BD.NombreBaseDatos,
			A.NombreAmbiente,
			U.Logueo,
			CASE 
				WHEN (
						SELECT COUNT(*) FROM dbversion.dbo.Modificacion M2 WHERE M2.NombreObjetoModificado = M.NombreObjetoModificado AND M2.Aprobado != 1 AND M2.IdUsuario != M.IdUsuario
						) > 1 THEN 'ALERTA'
				ELSE 'NO ALERTA'
			END AS 'ALERTA'
		FROM
			dbversion.dbo.Modificacion M
			INNER JOIN dbversion.dbo.TipoModificacion TM ON M.IdTipoModificacion = TM.IdTipoModificacion
			INNER JOIN dbversion.dbo.ObjetoModificado OM ON M.IdObjetoModificado = OM.IdObjetoModificado
			INNER JOIN dbversion.dbo.BaseDatos BD ON M.IdBaseDatos = BD.IdBaseDatos
			INNER JOIN dbversion.dbo.Ambiente A ON M.IdAmbiente = A.IdAmbiente
			INNER JOIN dbversion.dbo.Usuario U ON M.IdUsuario = U.IdUsuario
		WHERE
			M.Aprobado != 1
			AND M.IdSolucion = @IdSolucion
			AND M.Estado = 1
		ORDER BY
			Requerimiento
	END

	--CARGAR MODIFICACIONES QUE FUERON APROBADAS POR EL TESTER
	IF @Action = 1
	BEGIN
		SELECT
			M.IdModificacion,
			M.Descripcion,
			M.FechaModificacion,
			M.NombreObjetoModificado,
			M.Requerimiento,
			M.Observacion,
			M.Aprobado,
			M.Estado,
			TM.NombreTipoModificacion,
			OM.NombreObjetoModificado AS 'NombreObjetoModificadoOM',
			BD.NombreBaseDatos,
			A.NombreAmbiente,
			U.Logueo
		FROM
			dbversion.dbo.Modificacion M
			INNER JOIN dbversion.dbo.TipoModificacion TM ON M.IdTipoModificacion = TM.IdTipoModificacion
			INNER JOIN dbversion.dbo.ObjetoModificado OM ON M.IdObjetoModificado = OM.IdObjetoModificado
			INNER JOIN dbversion.dbo.BaseDatos BD ON M.IdBaseDatos = BD.IdBaseDatos
			INNER JOIN dbversion.dbo.Ambiente A ON M.IdAmbiente = A.IdAmbiente
			INNER JOIN dbversion.dbo.Usuario U ON M.IdUsuario = U.IdUsuario
		WHERE
			M.Aprobado = 1
			AND M.IdSolucion = @IdSolucion
			AND M.Estado = 1
		ORDER BY
			Requerimiento
	END
	--VISUALIZAR MODIFICACIÓN INDIVIDUAL
	IF @Action = 2
	BEGIN
		SELECT
			M.IdModificacion,
			M.Descripcion,
			M.FechaModificacion,
			M.NombreObjetoModificado,
			M.Requerimiento,
			M.Observacion,
			M.Aprobado,
			M.Estado,
			TM.NombreTipoModificacion,
			OM.NombreObjetoModificado AS 'NombreObjetoModificadoOM',
			BD.NombreBaseDatos,
			A.NombreAmbiente,
			U.Logueo
		FROM
			dbversion.dbo.Modificacion M
			INNER JOIN dbversion.dbo.TipoModificacion TM ON M.IdTipoModificacion = TM.IdTipoModificacion
			INNER JOIN dbversion.dbo.ObjetoModificado OM ON M.IdObjetoModificado = OM.IdObjetoModificado
			INNER JOIN dbversion.dbo.BaseDatos BD ON M.IdBaseDatos = BD.IdBaseDatos
			INNER JOIN dbversion.dbo.Ambiente A ON M.IdAmbiente = A.IdAmbiente
			INNER JOIN dbversion.dbo.Usuario U ON M.IdUsuario = U.IdUsuario
		WHERE
			M.IdModificacion = @IdModificacion
	END

	--EDITAR MODIFICACIÓN INDIVIDUAL
	IF @Action = 3
	BEGIN
		SELECT
			*
		FROM
			dbversion.dbo.Modificacion
		WHERE
			IdModificacion = @IdModificacion
	END

	--AGREGAR UNA ACTUALIZACIÓN INDIVIDUAL
	IF @Action = 4
	BEGIN
		INSERT INTO
			dbversion.dbo.Modificacion
		VALUES
		(
		@Descripcion,
		@FechaModificacion,
		@NombreObjetoModificado,
		@Requerimiento,
		@Observacion,
		0,
		1,
		@IdTipoModificacion,
		@IdObjetoModificado,
		@IdBaseDatos,
		@IdAmbiente,
		@IdUsuario,
		@IdSolucion
		)
	END
	
	--ACTUALIZAR MODIFICACIÓN INDIVIDUAL
	IF @Action = 5
	BEGIN
		UPDATE
			dbversion.dbo.Modificacion
		SET
			Descripcion = @Descripcion,
			FechaModificacion = @FechaModificacion,
			NombreObjetoModificado = @NombreObjetoModificado,
			Requerimiento = @Requerimiento,
			Observacion = @Observacion,
			IdTipoModificacion = @IdTipoModificacion,
			IdObjetoModificado = @IdObjetoModificado,
			IdBaseDatos = @IdBaseDatos,
			IdAmbiente = @IdAmbiente
			--IdUsuario = @IdUsuario
		WHERE
			IdModificacion = @IdModificacion
	END

	--APROBAR/NO APROBAR MODIFICACIÓN
	IF @Action = 6
	BEGIN
		UPDATE
			dbversion.dbo.Modificacion
		SET
			Aprobado = @Aprobado
		WHERE
			IdModificacion = @IdModificacion
	END

	--ELIMINAR MODIFICACIÓN
	IF @Action = 7
	BEGIN
		UPDATE
			dbversion.dbo.Modificacion
		SET
			Estado = 0
		WHERE
			IdModificacion = @IdModificacion
	END

	--CARGAR MODIFICACIONES FILTRADAS ACTIVAS
	IF @Action = 8
	BEGIN
		SELECT
			M.IdModificacion,
			M.Descripcion,
			M.FechaModificacion,
			M.NombreObjetoModificado,
			M.Requerimiento,
			M.Observacion,
			M.Aprobado,
			M.Estado,
			TM.NombreTipoModificacion,
			OM.NombreObjetoModificado AS 'NombreObjetoModificadoOM',
			BD.NombreBaseDatos,
			A.NombreAmbiente,
			U.Logueo
		FROM
			dbversion.dbo.Modificacion M
			INNER JOIN dbversion.dbo.TipoModificacion TM ON M.IdTipoModificacion = TM.IdTipoModificacion
			INNER JOIN dbversion.dbo.ObjetoModificado OM ON M.IdObjetoModificado = OM.IdObjetoModificado
			INNER JOIN dbversion.dbo.BaseDatos BD ON M.IdBaseDatos = BD.IdBaseDatos
			INNER JOIN dbversion.dbo.Ambiente A ON M.IdAmbiente = A.IdAmbiente
			INNER JOIN dbversion.dbo.Usuario U ON M.IdUsuario = U.IdUsuario
		WHERE
			M.Aprobado = 0
			AND M.IdSolucion = @IdSolucion
			AND M.Estado = 1 AND
			M.IdModificacion LIKE 
				CASE 
					WHEN @IdModificacion IS NULL THEN ISNULL(@IdModificacion, '%') 
					WHEN @IdModificacion < 1 THEN M.IdModificacion
					ELSE @IdModificacion 
				END
			AND M.IdTipoModificacion = CASE WHEN @IdTipoModificacion < 1 THEN M.IdTipoModificacion ELSE @IdTipoModificacion END
			AND M.IdObjetoModificado = CASE WHEN @IdObjetoModificado < 1 THEN M.IdObjetoModificado ELSE @IdObjetoModificado END
			AND M.IdBaseDatos = CASE WHEN @IdBaseDatos < 1 THEN M.IdBaseDatos ELSE @IdBaseDatos END
			AND M.IdAmbiente = CASE WHEN @IdAmbiente < 1 THEN M.IdAmbiente ELSE @IdAmbiente END
			AND M.IdUsuario = CASE WHEN @IdUsuario < 1 THEN M.IdUsuario ELSE @IdUsuario END
			AND M.NombreObjetoModificado LIKE ISNULL('%'+@NombreObjetoModificado COLLATE Latin1_General_CI_AI+'%', '%')
			AND M.Requerimiento LIKE ISNULL('%'+@Requerimiento COLLATE Latin1_General_CI_AI+'%', '%')
			AND M.FechaModificacion = CASE WHEN @FechaModificacion = '01-01-1900' THEN M.FechaModificacion ELSE @FechaModificacion END
		ORDER BY
			Requerimiento
	END
	--CARGAR MODIFICACIONES FILTRADAS APROBADAS POR EL TESTER
	IF @Action = 9
	BEGIN
		SELECT
			M.IdModificacion,
			M.Descripcion,
			M.FechaModificacion,
			M.NombreObjetoModificado,
			M.Requerimiento,
			M.Observacion,
			M.Aprobado,
			M.Estado,
			TM.NombreTipoModificacion,
			OM.NombreObjetoModificado AS 'NombreObjetoModificadoOM',
			BD.NombreBaseDatos,
			A.NombreAmbiente,
			U.Logueo
		FROM
			dbversion.dbo.Modificacion M
			INNER JOIN dbversion.dbo.TipoModificacion TM ON M.IdTipoModificacion = TM.IdTipoModificacion
			INNER JOIN dbversion.dbo.ObjetoModificado OM ON M.IdObjetoModificado = OM.IdObjetoModificado
			INNER JOIN dbversion.dbo.BaseDatos BD ON M.IdBaseDatos = BD.IdBaseDatos
			INNER JOIN dbversion.dbo.Ambiente A ON M.IdAmbiente = A.IdAmbiente
			INNER JOIN dbversion.dbo.Usuario U ON M.IdUsuario = U.IdUsuario
		WHERE
			M.Aprobado = 1
			AND M.IdSolucion = @IdSolucion
			AND M.Estado = 1 AND
			M.IdModificacion LIKE 
				CASE 
					WHEN @IdModificacion IS NULL THEN ISNULL(@IdModificacion, '%') 
					WHEN @IdModificacion < 1 THEN M.IdModificacion
					ELSE @IdModificacion 
				END
			AND M.IdTipoModificacion = CASE WHEN @IdTipoModificacion < 1 THEN M.IdTipoModificacion ELSE @IdTipoModificacion END
			AND M.IdObjetoModificado = CASE WHEN @IdObjetoModificado < 1 THEN M.IdObjetoModificado ELSE @IdObjetoModificado END
			AND M.IdBaseDatos = CASE WHEN @IdBaseDatos < 1 THEN M.IdBaseDatos ELSE @IdBaseDatos END
			AND M.IdAmbiente = CASE WHEN @IdAmbiente < 1 THEN M.IdAmbiente ELSE @IdAmbiente END
			AND M.IdUsuario = CASE WHEN @IdUsuario < 1 THEN M.IdUsuario ELSE @IdUsuario END
			AND M.NombreObjetoModificado LIKE ISNULL('%'+@NombreObjetoModificado COLLATE Latin1_General_CI_AI+'%', '%')
			AND M.Requerimiento LIKE ISNULL('%'+@Requerimiento COLLATE Latin1_General_CI_AI+'%', '%')
			AND M.FechaModificacion = CASE WHEN @FechaModificacion = '01-01-1900' THEN M.FechaModificacion ELSE @FechaModificacion END
		ORDER BY
			Requerimiento
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObjetoModificado]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ObjetoModificado]

@Action INT = NULL,
@IdObjetoModificado INT = NULL,
@NombreObjetoModificado NVARCHAR(150) = NULL,
@Estado BIT = NULL

AS

BEGIN 

	--CARGAR OBJETOS MODIFICADOS
	IF @Action = 0
	BEGIN
		SELECT
			*
		FROM
			dbversion.dbo.ObjetoModificado
		WHERE
			Estado = 1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Solucion]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Solucion]
@Action INT = NULL,
@IdSolucion INT = NULL,
@NombreSolucion NVARCHAR (150) = NULL,
@Identificador NVARCHAR (150) = NULL,
@Estado BIT = NULL

AS

BEGIN

	IF @Action = 0
	BEGIN
		SELECT
			*
		FROM
			dbversion.dbo.Solucion
		WHERE
			Estado = 1
	END

	IF @Action = 1
	BEGIN
		SELECT
			*
		FROM
			dbversion.dbo.Solucion
		WHERE
			IdSolucion = @IdSolucion
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TipoModificacion]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TipoModificacion]

@Action INT = NULL,
@IdTipoModificacion INT = NULL,
@NombreTipoModificacion NVARCHAR(150) = NULL,
@Estado BIT = NULL

AS

BEGIN 

	--CARGAR TIPOS DE MODIFICACIÓN
	IF @Action = 0
	BEGIN
		SELECT
			*
		FROM
			dbversion.dbo.TipoModificacion
		WHERE
			Estado = 1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Usuario]    Script Date: 4/03/2024 3:18:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Usuario]

@Action INT = NULL,
@IdUsuario INT = NULL,
@NombreUsuario NVARCHAR(150) = NULL,
@Logueo NVARCHAR(150) = NULL,
@Clave NVARCHAR(MAX) = NULL,
@Estado BIT = NULL

AS
BEGIN

	--LOGIN
	IF @Action = 0
	BEGIN
		SELECT
			*
		FROM
			dbversion.dbo.Usuario
		WHERE
			Logueo = @Logueo
			AND Clave = @Clave
			AND Estado = 1
	END

	--TODOS LOS USUARIOS ACTIVOS
	IF @Action = 1
	BEGIN
		SELECT
			*
		FROM
			dbversion.dbo.Usuario
		WHERE
			Estado = 1
	END
END
GO
