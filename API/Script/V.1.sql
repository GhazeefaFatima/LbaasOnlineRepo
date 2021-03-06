USE [master]
GO
/****** Object:  Database [ShoppersDelightDB]    Script Date: 24-Apr-2022 7:54:48 PM ******/
CREATE DATABASE [ShoppersDelightDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoppersDelightDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShoppersDelightDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShoppersDelightDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShoppersDelightDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ShoppersDelightDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoppersDelightDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoppersDelightDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoppersDelightDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoppersDelightDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShoppersDelightDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoppersDelightDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ShoppersDelightDB] SET  MULTI_USER 
GO
ALTER DATABASE [ShoppersDelightDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoppersDelightDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoppersDelightDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoppersDelightDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShoppersDelightDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShoppersDelightDB', N'ON'
GO
ALTER DATABASE [ShoppersDelightDB] SET QUERY_STORE = OFF
GO
USE [ShoppersDelightDB]
GO
/****** Object:  Table [dbo].[category]    Script Date: 24-Apr-2022 7:54:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [uniqueidentifier] NOT NULL,
	[category_name] [nchar](10) NULL,
	[is_deleted] [bit] NULL,
	[created_date] [datetime] NULL,
	[created_by] [datetime] NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[color]    Script Date: 24-Apr-2022 7:54:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color](
	[color_id] [uniqueidentifier] NOT NULL,
	[color_name] [nvarchar](100) NULL,
 CONSTRAINT [PK_color] PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 24-Apr-2022 7:54:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [uniqueidentifier] NOT NULL,
	[product_name] [nvarchar](200) NULL,
	[product_image] [nvarchar](100) NULL,
	[category_id] [uniqueidentifier] NULL,
	[sub_category_id] [uniqueidentifier] NULL,
	[color_id] [uniqueidentifier] NULL,
	[size_id] [uniqueidentifier] NULL,
	[is_main_page] [bit] NULL,
	[is_new_product] [bit] NULL,
	[is_best_selling] [bit] NULL,
	[is_featured_product] [bit] NULL,
	[is_on_sale] [bit] NULL,
	[price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size]    Script Date: 24-Apr-2022 7:54:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[size_id] [uniqueidentifier] NOT NULL,
	[size_name] [nvarchar](100) NULL,
 CONSTRAINT [PK_size] PRIMARY KEY CLUSTERED 
(
	[size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subcategory]    Script Date: 24-Apr-2022 7:54:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subcategory](
	[subcat_id] [nchar](10) NOT NULL,
	[subcat_name] [nvarchar](100) NULL,
 CONSTRAINT [PK_subcategory] PRIMARY KEY CLUSTERED 
(
	[subcat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ShoppersDelightDB] SET  READ_WRITE 
GO
