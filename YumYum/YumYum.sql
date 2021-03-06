USE [master]
GO
/****** Object:  Database [YumYum]    Script Date: 18/03/2017 3:49:05 p.m. ******/
CREATE DATABASE [YumYum]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YumYum', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\YumYum.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'YumYum_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\YumYum_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [YumYum] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YumYum].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [YumYum] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YumYum] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YumYum] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YumYum] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YumYum] SET ARITHABORT OFF 
GO
ALTER DATABASE [YumYum] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [YumYum] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [YumYum] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YumYum] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YumYum] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YumYum] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YumYum] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YumYum] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YumYum] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YumYum] SET  DISABLE_BROKER 
GO
ALTER DATABASE [YumYum] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YumYum] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YumYum] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YumYum] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YumYum] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YumYum] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [YumYum] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YumYum] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [YumYum] SET  MULTI_USER 
GO
ALTER DATABASE [YumYum] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [YumYum] SET DB_CHAINING OFF 
GO
ALTER DATABASE [YumYum] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [YumYum] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [YumYum] SET DELAYED_DURABILITY = DISABLED 
GO
USE [YumYum]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 18/03/2017 3:49:06 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[Address1] [nvarchar](30) NOT NULL,
	[Address2] [nvarchar](30) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[MobileNumber] [varchar](20) NULL,
	[EmailAddress] [varchar](50) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staff]    Script Date: 18/03/2017 3:49:06 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [int] NOT NULL,
	[HourlyRate] [decimal](3, 2) NOT NULL,
	[HireDate] [date] NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StaffPosition]    Script Date: 18/03/2017 3:49:06 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffPosition](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [nvarchar](20) NOT NULL,
	[StaffTypeId] [int] NOT NULL,
 CONSTRAINT [PK_StaffPosition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StaffType]    Script Date: 18/03/2017 3:49:06 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nchar](10) NOT NULL,
 CONSTRAINT [PK_StaffType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Person] FOREIGN KEY([Id])
REFERENCES [dbo].[Person] ([Id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Person]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_StaffPosition] FOREIGN KEY([Id])
REFERENCES [dbo].[StaffPosition] ([Id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_StaffPosition]
GO
ALTER TABLE [dbo].[StaffPosition]  WITH CHECK ADD  CONSTRAINT [FK_StaffPosition_StaffType] FOREIGN KEY([StaffTypeId])
REFERENCES [dbo].[StaffType] ([Id])
GO
ALTER TABLE [dbo].[StaffPosition] CHECK CONSTRAINT [FK_StaffPosition_StaffType]
GO
USE [master]
GO
ALTER DATABASE [YumYum] SET  READ_WRITE 
GO
