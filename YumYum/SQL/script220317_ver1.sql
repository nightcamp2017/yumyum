USE [master]
GO
/****** Object:  Database [YumYum]    Script Date: 22/03/2017 2:27:25 p.m. ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] NOT NULL,
	[CustomerCode] [nchar](4) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Date]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Date](
	[DateId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_WorkingDate] PRIMARY KEY CLUSTERED 
(
	[DateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FoodItem]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodItem](
	[FoodItemId] [int] IDENTITY(1,1) NOT NULL,
	[FoodName] [nvarchar](50) NOT NULL,
	[FoodDetail] [nvarchar](200) NOT NULL,
	[FoodTypeId] [int] NOT NULL,
 CONSTRAINT [PK_FoodItem] PRIMARY KEY CLUSTERED 
(
	[FoodItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FoodType]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodType](
	[FoodTypeId] [int] IDENTITY(1,1) NOT NULL,
	[FoodType] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_FoodType] PRIMARY KEY CLUSTERED 
(
	[FoodTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LogInDetail]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogInDetail](
	[LoginId] [int] NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](15) NOT NULL,
	[LoginHistory] [timestamp] NOT NULL,
 CONSTRAINT [PK_LogInDetail] PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MeatType]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeatType](
	[MeatId] [int] IDENTITY(1,1) NOT NULL,
	[MeatType] [nchar](15) NOT NULL,
 CONSTRAINT [PK_MeatType] PRIMARY KEY CLUSTERED 
(
	[MeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OnlineBooking]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnlineBooking](
	[OnlineBookingId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[LoginId] [int] NULL,
	[BookingDate] [date] NOT NULL,
	[BookingTime] [time](7) NOT NULL,
	[NumberOfPeople] [int] NOT NULL,
	[Note] [nvarchar](400) NULL,
 CONSTRAINT [PK_OnlineBooking] PRIMARY KEY CLUSTERED 
(
	[OnlineBookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OnlineOrdering]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnlineOrdering](
	[OnlineOrderId] [int] IDENTITY(1,1) NOT NULL,
	[LoginId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[OrderDetailId] [int] NOT NULL,
	[OrderedDate] [date] NOT NULL,
	[EstimatedPickupTime] [time](7) NOT NULL,
	[TotalPrice] [decimal](4, 2) NOT NULL,
 CONSTRAINT [PK_OnlineOrdering] PRIMARY KEY CLUSTERED 
(
	[OnlineOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[FoodItemId] [int] NOT NULL,
	[MeatTypeId] [int] NOT NULL,
	[SpicinessLevelId] [int] NOT NULL,
	[PriceId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Person]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[Address1] [nvarchar](30) NOT NULL,
	[Address2] [nvarchar](30) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[MobileNumber] [varchar](20) NOT NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[DateOfBirth] [date] NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PriceList]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceList](
	[PriceId] [int] IDENTITY(1,1) NOT NULL,
	[FoodTypeId] [int] NULL,
	[MeatId] [int] NULL,
	[Price] [decimal](4, 2) NULL,
 CONSTRAINT [PK_PriceList] PRIMARY KEY CLUSTERED 
(
	[PriceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpicinessLevel]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpicinessLevel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SpicinessLevel] [nchar](10) NOT NULL,
 CONSTRAINT [PK_SpicinessLevel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staff]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffId] [int] NOT NULL,
	[HourlyRate] [decimal](3, 2) NOT NULL,
	[HireDate] [date] NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StaffPosition]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffPosition](
	[StaffPositionId] [int] IDENTITY(1,1) NOT NULL,
	[Position] [nvarchar](20) NOT NULL,
	[StaffTypeId] [int] NOT NULL,
 CONSTRAINT [PK_StaffPosition] PRIMARY KEY CLUSTERED 
(
	[StaffPositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StaffType]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffType](
	[StaffTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nchar](10) NOT NULL,
 CONSTRAINT [PK_StaffType] PRIMARY KEY CLUSTERED 
(
	[StaffTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkingRoster]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingRoster](
	[RosterId] [int] IDENTITY(1,1) NOT NULL,
	[StaffId] [int] NOT NULL,
	[PositionId] [int] NOT NULL,
	[ShiftId] [int] NOT NULL,
 CONSTRAINT [PK_WorkingRoster] PRIMARY KEY CLUSTERED 
(
	[RosterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkingShift]    Script Date: 22/03/2017 2:27:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingShift](
	[ShiftId] [int] NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[FinishTime] [time](7) NOT NULL,
	[TotalHour] [int] NOT NULL,
	[DateId] [int] NOT NULL,
 CONSTRAINT [PK_WorkingShift] PRIMARY KEY CLUSTERED 
(
	[ShiftId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Person] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Person]
GO
ALTER TABLE [dbo].[FoodItem]  WITH CHECK ADD  CONSTRAINT [FK_FoodItem_FoodType] FOREIGN KEY([FoodTypeId])
REFERENCES [dbo].[FoodType] ([FoodTypeId])
GO
ALTER TABLE [dbo].[FoodItem] CHECK CONSTRAINT [FK_FoodItem_FoodType]
GO
ALTER TABLE [dbo].[OnlineBooking]  WITH CHECK ADD  CONSTRAINT [FK_OnlineBooking_LogInDetail] FOREIGN KEY([LoginId])
REFERENCES [dbo].[LogInDetail] ([LoginId])
GO
ALTER TABLE [dbo].[OnlineBooking] CHECK CONSTRAINT [FK_OnlineBooking_LogInDetail]
GO
ALTER TABLE [dbo].[OnlineBooking]  WITH CHECK ADD  CONSTRAINT [FK_OnlineBooking_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[OnlineBooking] CHECK CONSTRAINT [FK_OnlineBooking_Person]
GO
ALTER TABLE [dbo].[OnlineOrdering]  WITH CHECK ADD  CONSTRAINT [FK_OnlineOrdering_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[OnlineOrdering] CHECK CONSTRAINT [FK_OnlineOrdering_Customer]
GO
ALTER TABLE [dbo].[OnlineOrdering]  WITH CHECK ADD  CONSTRAINT [FK_OnlineOrdering_LogInDetail] FOREIGN KEY([LoginId])
REFERENCES [dbo].[LogInDetail] ([LoginId])
GO
ALTER TABLE [dbo].[OnlineOrdering] CHECK CONSTRAINT [FK_OnlineOrdering_LogInDetail]
GO
ALTER TABLE [dbo].[OnlineOrdering]  WITH CHECK ADD  CONSTRAINT [FK_OnlineOrdering_OrderDetail] FOREIGN KEY([OrderDetailId])
REFERENCES [dbo].[OrderDetail] ([OrderDetailId])
GO
ALTER TABLE [dbo].[OnlineOrdering] CHECK CONSTRAINT [FK_OnlineOrdering_OrderDetail]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_FoodItem] FOREIGN KEY([FoodItemId])
REFERENCES [dbo].[FoodItem] ([FoodItemId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_FoodItem]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_MeatType] FOREIGN KEY([MeatTypeId])
REFERENCES [dbo].[MeatType] ([MeatId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_MeatType]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_PriceList] FOREIGN KEY([PriceId])
REFERENCES [dbo].[PriceList] ([PriceId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_PriceList]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_SpicinessLevel] FOREIGN KEY([SpicinessLevelId])
REFERENCES [dbo].[SpicinessLevel] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_SpicinessLevel]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_LogInDetail1] FOREIGN KEY([PersonId])
REFERENCES [dbo].[LogInDetail] ([LoginId])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_LogInDetail1]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Person] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Person]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_StaffPosition] FOREIGN KEY([StaffId])
REFERENCES [dbo].[StaffPosition] ([StaffPositionId])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_StaffPosition]
GO
ALTER TABLE [dbo].[StaffPosition]  WITH CHECK ADD  CONSTRAINT [FK_StaffPosition_StaffType] FOREIGN KEY([StaffTypeId])
REFERENCES [dbo].[StaffType] ([StaffTypeId])
GO
ALTER TABLE [dbo].[StaffPosition] CHECK CONSTRAINT [FK_StaffPosition_StaffType]
GO
ALTER TABLE [dbo].[WorkingRoster]  WITH CHECK ADD  CONSTRAINT [FK_WorkingRoster_Staff] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staff] ([StaffId])
GO
ALTER TABLE [dbo].[WorkingRoster] CHECK CONSTRAINT [FK_WorkingRoster_Staff]
GO
ALTER TABLE [dbo].[WorkingRoster]  WITH CHECK ADD  CONSTRAINT [FK_WorkingRoster_StaffPosition] FOREIGN KEY([PositionId])
REFERENCES [dbo].[StaffPosition] ([StaffPositionId])
GO
ALTER TABLE [dbo].[WorkingRoster] CHECK CONSTRAINT [FK_WorkingRoster_StaffPosition]
GO
ALTER TABLE [dbo].[WorkingRoster]  WITH CHECK ADD  CONSTRAINT [FK_WorkingRoster_WorkingShift] FOREIGN KEY([ShiftId])
REFERENCES [dbo].[WorkingShift] ([ShiftId])
GO
ALTER TABLE [dbo].[WorkingRoster] CHECK CONSTRAINT [FK_WorkingRoster_WorkingShift]
GO
ALTER TABLE [dbo].[WorkingShift]  WITH CHECK ADD  CONSTRAINT [FK_WorkingShift_WorkingDate] FOREIGN KEY([DateId])
REFERENCES [dbo].[Date] ([DateId])
GO
ALTER TABLE [dbo].[WorkingShift] CHECK CONSTRAINT [FK_WorkingShift_WorkingDate]
GO
USE [master]
GO
ALTER DATABASE [YumYum] SET  READ_WRITE 
GO
