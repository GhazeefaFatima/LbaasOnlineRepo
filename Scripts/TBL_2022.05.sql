
USE [ShoppersDelightDB]
GO
/****** Object:  Table [dbo].[category]    Script Date: 29-May-2022 12:53:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](500) NULL,
	[is_deleted] [bit] NULL,
	[created_date] [datetime] NULL,
	[created_by] [datetime] NULL,
 CONSTRAINT [PK_category_1] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[collection]    Script Date: 29-May-2022 12:53:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[collection](
	[collection_id] [int] IDENTITY(1,1) NOT NULL,
	[collection_name] [nvarchar](500) NULL,
	[is_deleted] [bit] NULL,
	[created_date] [datetime] NULL,
	[created_by] [datetime] NULL,
 CONSTRAINT [PK_collection] PRIMARY KEY CLUSTERED 
(
	[collection_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[color]    Script Date: 29-May-2022 12:53:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color](
	[color_id] [int] IDENTITY(1,1) NOT NULL,
	[color_name] [nvarchar](100) NULL,
	[is_deleted] [bit] NULL,
	[created_date] [datetime] NULL,
	[created_by] [datetime] NULL,
 CONSTRAINT [PK_color_1] PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[images]    Script Date: 29-May-2022 12:53:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[images](
	[image_id] [uniqueidentifier] NOT NULL,
	[image_src] [nvarchar](200) NULL,
	[product_id] [uniqueidentifier] NULL,
	[alt] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.images] PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lookup_value]    Script Date: 29-May-2022 12:53:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lookup_value](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lookup_table] [int] NULL,
	[description] [nvarchar](500) NULL,
	[header_id] [int] NULL,
	[created_by] [int] NULL,
	[created_date] [datetime] NULL,
	[is_deleted] [bit] NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_lookup_value] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 29-May-2022 12:53:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](200) NULL,
	[description] [nvarchar](max) NULL,
	[type] [nvarchar](500) NULL,
	[sub_category_id] [int] NULL,
	[collection_id] [int] NULL,
	[category_id] [int] NULL,
	[price] [decimal](18, 0) NULL,
	[sale] [bit] NULL,
	[discount] [int] NULL,
	[stock] [int] NULL,
	[new] [bit] NULL,
	[tags] [nvarchar](200) NULL,

 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size]    Script Date: 29-May-2022 12:53:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[size_id] [int] IDENTITY(1,1) NOT NULL,
	[size_name] [nvarchar](100) NULL,
	[is_deleted] [bit] NULL,
	[created_date] [datetime] NULL,
	[created_by] [datetime] NULL,
 CONSTRAINT [PK_size_1] PRIMARY KEY CLUSTERED 
(
	[size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subcategory]    Script Date: 29-May-2022 12:53:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subcategory](
	[subcategory_id] [int] IDENTITY(1,1) NOT NULL,
	[subcategory_name] [nvarchar](100) NULL,
	[is_deleted] [bit] NULL,
	[created_date] [datetime] NULL,
	[created_by] [datetime] NULL,
 CONSTRAINT [PK_subcategory_1] PRIMARY KEY CLUSTERED 
(
	[subcategory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[variants]    Script Date: 29-May-2022 12:53:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[variants](
	[variant_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[sku] [nchar](10) NULL,
	[size_id] [int] NULL,
	[color_id] [int] NULL,
	[image_id] [int] NULL,
 CONSTRAINT [PK_variants] PRIMARY KEY CLUSTERED 
(
	[variant_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
