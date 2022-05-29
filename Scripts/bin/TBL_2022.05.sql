USE [LibaasOnline]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/14/2021 12:06:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProdCatId] [int] NOT NULL,
	[ProdName] [varchar](250) NOT NULL,
	[ProdShortDescription] [varchar](max) NULL,
	[is_main_page] [bit] NULL,
	[is_new_product] [bit] NULL,
	[is_best_selling] [bit] NULL,
	[is_featured_product] [bit] NULL,
	[is_on_sale] [bit] NULL,
	[price] [decimal](18, 0) NULL,
	[description] [nvarchar](max) NULL,
	[Picture1] [varchar](500) NULL,
	[Picture2] [varchar](500) NULL,
	[Picture3] [varchar](500) NULL,
	[Picture4] [varchar](500) NULL,
	[Picture5] [varchar](500) NULL,
	[UnitPrice] [decimal](18, 0)  NULL,
	[OldPrice] [decimal](18, 0) NULL,
	[Discount] [decimal](18, 0) NULL,
	[UnitInStock] [int] NULL,
	[ProductAvailable] [bit] NULL,
	[created_by] [int] NULL,
	[created_date] [datetime] NULL default(GetDate()),
	[is_deleted] [bit] NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductAttribute]    Script Date: 6/14/2021 12:06:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttribute](
	[ProductId] [bigint] NOT NULL,
	[AttributeId] [int] NOT NULL,
	[AttributeValue] [varchar](250) NULL,
	[created_by] [int] NULL,
	[created_date] [datetime] NULL default(GetDate()),
	[is_deleted] [bit] NULL,
	[updated_date] [datetime] NULL,
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductAttributeLookup]    Script Date: 6/14/2021 12:06:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttributeLookup](
	[AttributeId] [int] IDENTITY(1,1) NOT NULL,
	[ProdCatId] [int] NOT NULL,
	[AttributeName] [varchar](250) NOT NULL,
	[created_by] [int] NULL,
	[created_date] [datetime] NULL default(GetDate()),
	[is_deleted] [bit] NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_ProductAttributeLookup] PRIMARY KEY CLUSTERED 
(
	[AttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 6/14/2021 12:06:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProdCatId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](250) NULL,
	[created_by] [int] NULL,
	[created_date] [datetime] NULL default(GetDate()),
	[is_deleted] [bit] NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProdCatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProdCatId])
REFERENCES [dbo].[ProductCategory] ([ProdCatId])
GO
--ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
--GO
--ALTER TABLE [dbo].[ProductAttribute]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttribute_Product] FOREIGN KEY([ProductId])
--REFERENCES [dbo].[Product] ([ProductId])
--GO
--ALTER TABLE [dbo].[ProductAttribute] CHECK CONSTRAINT [FK_ProductAttribute_Product]
--GO
--ALTER TABLE [dbo].[ProductAttribute]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttribute_ProductAttributeLookup] FOREIGN KEY([AttributeId])
--REFERENCES [dbo].[ProductAttributeLookup] ([AttributeId])
--GO
--ALTER TABLE [dbo].[ProductAttribute] CHECK CONSTRAINT [FK_ProductAttribute_ProductAttributeLookup]
--GO
--ALTER TABLE [dbo].[ProductAttributeLookup]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttributeLookup_ProductCategory] FOREIGN KEY([ProdCatId])
--REFERENCES [dbo].[ProductCategory] ([ProdCatId])
--GO
--ALTER TABLE [dbo].[ProductAttributeLookup] CHECK CONSTRAINT [FK_ProductAttributeLookup_ProductCategory]
--GO

--------------------------------------------------------------Product Update----------------------------------------------------------------------