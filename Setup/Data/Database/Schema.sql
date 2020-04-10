CREATE DATABASE [REPOS]
GO

USE [REPOS]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 4/10/2020 2:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[ID] [uniqueidentifier] NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[SucursalID] [uniqueidentifier] NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Direccion] [varchar](300) NULL,
	[Estatus] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 4/10/2020 2:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo](
	[ID] [uniqueidentifier] NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[Referencia] [varchar](50) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[FabricanteID] [uniqueidentifier] NULL,
	[Precio] [money] NULL,
	[PorcentajeImpuesto] [int] NULL,
	[Estatus] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Caja]    Script Date: 4/10/2020 2:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caja](
	[ID] [uniqueidentifier] NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[AlmacenID] [uniqueidentifier] NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Hostname] [varchar](100) NULL,
	[Ip] [varchar](50) NULL,
	[Estatus] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 4/10/2020 2:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ID] [uniqueidentifier] NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[Codigo] [varchar](20) NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Apellido] [varchar](30) NOT NULL,
	[Telefono] [varchar](50) NULL,
	[Correo] [varchar](150) NULL,
	[Estatus] [bit] NOT NULL,
	[Cedula] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 4/10/2020 2:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[ID] [uniqueidentifier] NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Estatus] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 4/10/2020 2:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricante](
	[ID] [uniqueidentifier] NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Estatus] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 4/10/2020 2:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[ID] [uniqueidentifier] NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[AlmacenID] [uniqueidentifier] NOT NULL,
	[Disponible] [int] NULL,
	[Reservado] [int] NULL,
	[ArticuloID] [uniqueidentifier] NOT NULL,
	[Estatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 4/10/2020 2:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[ID] [uniqueidentifier] NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[EmpresaID] [uniqueidentifier] NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Direccion] [varchar](300) NULL,
	[Estatus] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 4/10/2020 2:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[ID] [uniqueidentifier] NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[SucursalID] [uniqueidentifier] NOT NULL,
	[ClienteID] [uniqueidentifier] NOT NULL,
	[CajaID] [uniqueidentifier] NULL,
	[SubTotal] [money] NOT NULL,
	[Impuesto] [money] NULL,
	[Total] [money] NOT NULL,
	[Lineas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaD]    Script Date: 4/10/2020 2:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaD](
	[ID] [uniqueidentifier] NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[VentaID] [uniqueidentifier] NOT NULL,
	[ArticuloID] [uniqueidentifier] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [money] NULL,
	[Descuento] [money] NULL,
	[SubTotal] [money] NOT NULL,
	[Impuesto] [money] NULL,
	[Total] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Almacen] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[Almacen] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Almacen] ADD  DEFAULT ((1)) FOR [Estatus]
GO
ALTER TABLE [dbo].[Articulo] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[Articulo] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Articulo] ADD  DEFAULT ((1)) FOR [Estatus]
GO
ALTER TABLE [dbo].[Caja] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[Caja] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Caja] ADD  DEFAULT ((1)) FOR [Estatus]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ((1)) FOR [Estatus]
GO
ALTER TABLE [dbo].[Empresa] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[Empresa] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Empresa] ADD  DEFAULT ((1)) FOR [Estatus]
GO
ALTER TABLE [dbo].[Fabricante] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[Fabricante] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Fabricante] ADD  DEFAULT ((1)) FOR [Estatus]
GO
ALTER TABLE [dbo].[Inventario] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Inventario] ADD  DEFAULT ((0)) FOR [Disponible]
GO
ALTER TABLE [dbo].[Inventario] ADD  DEFAULT ((0)) FOR [Reservado]
GO
ALTER TABLE [dbo].[Inventario] ADD  DEFAULT ((1)) FOR [Estatus]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((1)) FOR [Estatus]
GO
ALTER TABLE [dbo].[Venta] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[Venta] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[VentaD] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[VentaD] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD FOREIGN KEY([SucursalID])
REFERENCES [dbo].[Sucursal] ([ID])
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD FOREIGN KEY([SucursalID])
REFERENCES [dbo].[Sucursal] ([ID])
GO
ALTER TABLE [dbo].[Articulo]  WITH CHECK ADD FOREIGN KEY([FabricanteID])
REFERENCES [dbo].[Fabricante] ([ID])
GO
ALTER TABLE [dbo].[Articulo]  WITH CHECK ADD FOREIGN KEY([FabricanteID])
REFERENCES [dbo].[Fabricante] ([ID])
GO
ALTER TABLE [dbo].[Caja]  WITH CHECK ADD FOREIGN KEY([AlmacenID])
REFERENCES [dbo].[Almacen] ([ID])
GO
ALTER TABLE [dbo].[Caja]  WITH CHECK ADD FOREIGN KEY([AlmacenID])
REFERENCES [dbo].[Almacen] ([ID])
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD FOREIGN KEY([AlmacenID])
REFERENCES [dbo].[Almacen] ([ID])
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD FOREIGN KEY([ArticuloID])
REFERENCES [dbo].[Articulo] ([ID])
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([CajaID])
REFERENCES [dbo].[Caja] ([ID])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([CajaID])
REFERENCES [dbo].[Caja] ([ID])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ID])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ID])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([SucursalID])
REFERENCES [dbo].[Sucursal] ([ID])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([SucursalID])
REFERENCES [dbo].[Sucursal] ([ID])
GO
ALTER TABLE [dbo].[VentaD]  WITH CHECK ADD FOREIGN KEY([ArticuloID])
REFERENCES [dbo].[Articulo] ([ID])
GO
ALTER TABLE [dbo].[VentaD]  WITH CHECK ADD FOREIGN KEY([ArticuloID])
REFERENCES [dbo].[Articulo] ([ID])
GO
ALTER TABLE [dbo].[VentaD]  WITH CHECK ADD FOREIGN KEY([VentaID])
REFERENCES [dbo].[Venta] ([ID])
GO
ALTER TABLE [dbo].[VentaD]  WITH CHECK ADD FOREIGN KEY([VentaID])
REFERENCES [dbo].[Venta] ([ID])
GO
