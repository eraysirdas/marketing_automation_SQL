USE [master]
GO
/****** Object:  Database [marketoto3]    Script Date: 30 Ara 2022 18:00:18 ******/
CREATE DATABASE [marketoto3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'marketoto3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\marketoto3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'marketoto3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\marketoto3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [marketoto3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [marketoto3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [marketoto3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [marketoto3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [marketoto3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [marketoto3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [marketoto3] SET ARITHABORT OFF 
GO
ALTER DATABASE [marketoto3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [marketoto3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [marketoto3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [marketoto3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [marketoto3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [marketoto3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [marketoto3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [marketoto3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [marketoto3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [marketoto3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [marketoto3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [marketoto3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [marketoto3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [marketoto3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [marketoto3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [marketoto3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [marketoto3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [marketoto3] SET RECOVERY FULL 
GO
ALTER DATABASE [marketoto3] SET  MULTI_USER 
GO
ALTER DATABASE [marketoto3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [marketoto3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [marketoto3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [marketoto3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [marketoto3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [marketoto3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'marketoto3', N'ON'
GO
ALTER DATABASE [marketoto3] SET QUERY_STORE = OFF
GO
USE [marketoto3]
GO
/****** Object:  Table [dbo].[departmanlar]    Script Date: 30 Ara 2022 18:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departmanlar](
	[departman_ID] [numeric](7, 0) NOT NULL,
	[deparman_ismi] [nvarchar](50) NULL,
 CONSTRAINT [PK_DEPARTMANLAR] PRIMARY KEY CLUSTERED 
(
	[departman_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kategoribilgileri]    Script Date: 30 Ara 2022 18:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategoribilgileri](
	[kategori] [nvarchar](50) NULL,
	[kategori_ID] [numeric](7, 0) NOT NULL,
 CONSTRAINT [F_KATEGORİ] PRIMARY KEY CLUSTERED 
(
	[kategori_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[markabilgileri]    Script Date: 30 Ara 2022 18:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[markabilgileri](
	[kategori] [nvarchar](50) NULL,
	[marka] [nvarchar](50) NOT NULL,
	[kategori_ID] [numeric](7, 0) NULL,
 CONSTRAINT [PK_MARKABİLGİLERİ] PRIMARY KEY CLUSTERED 
(
	[marka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[müsteri]    Script Date: 30 Ara 2022 18:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[müsteri](
	[tel] [nvarchar](50) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[adres] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[puan] [int] NULL,
 CONSTRAINT [F_MUSTERI] PRIMARY KEY CLUSTERED 
(
	[tel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[satis]    Script Date: 30 Ara 2022 18:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[satis](
	[tel] [nvarchar](50) NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[barkodno] [nvarchar](50) NULL,
	[urunadi] [nvarchar](50) NULL,
	[miktari] [int] NULL,
	[satisfiyati] [decimal](18, 2) NULL,
	[toplamfiyati] [decimal](18, 2) NULL,
	[tarih] [nvarchar](50) NULL,
	[puan] [int] NULL,
	[satis_ID] [numeric](7, 0) NOT NULL,
	[calisan_ID] [numeric](7, 0) NULL,
 CONSTRAINT [PK_SATIS] PRIMARY KEY CLUSTERED 
(
	[satis_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sepet]    Script Date: 30 Ara 2022 18:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sepet](
	[tel] [nvarchar](50) NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[barkodno] [nvarchar](50) NULL,
	[urunadi] [nvarchar](50) NULL,
	[miktari] [int] NULL,
	[satisfiyati] [decimal](18, 2) NULL,
	[toplamfiyati] [decimal](18, 2) NULL,
	[tarih] [nvarchar](50) NULL,
	[puan] [int] NULL,
	[sepet_ID] [numeric](7, 0) NOT NULL,
	[calisan_ID] [numeric](7, 0) NULL,
 CONSTRAINT [F_SEPET] PRIMARY KEY CLUSTERED 
(
	[sepet_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[urun]    Script Date: 30 Ara 2022 18:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urun](
	[barkodno] [nvarchar](50) NOT NULL,
	[kategori] [nvarchar](50) NULL,
	[marka] [nvarchar](50) NULL,
	[urunadi] [nvarchar](50) NULL,
	[miktari] [int] NULL,
	[alisfiyati] [decimal](18, 2) NULL,
	[satisfiyati] [decimal](18, 2) NULL,
	[puan] [int] NULL,
	[tarih] [nvarchar](50) NULL,
 CONSTRAINT [F_URUN] PRIMARY KEY CLUSTERED 
(
	[barkodno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 30 Ara 2022 18:00:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[calisan_ID] [numeric](7, 0) NOT NULL,
	[departman_ID] [numeric](7, 0) NULL,
	[usr] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
 CONSTRAINT [F_USERS] PRIMARY KEY CLUSTERED 
(
	[calisan_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[kategoribilgileri] ([kategori], [kategori_ID]) VALUES (N'Meyve', CAST(102 AS Numeric(7, 0)))
INSERT [dbo].[kategoribilgileri] ([kategori], [kategori_ID]) VALUES (N'kozmetijk', CAST(105 AS Numeric(7, 0)))
INSERT [dbo].[kategoribilgileri] ([kategori], [kategori_ID]) VALUES (N'İcecek', CAST(123 AS Numeric(7, 0)))
INSERT [dbo].[kategoribilgileri] ([kategori], [kategori_ID]) VALUES (N'Et', CAST(124 AS Numeric(7, 0)))
INSERT [dbo].[kategoribilgileri] ([kategori], [kategori_ID]) VALUES (N'ilaç', CAST(125 AS Numeric(7, 0)))
INSERT [dbo].[kategoribilgileri] ([kategori], [kategori_ID]) VALUES (N'Sebze', CAST(172 AS Numeric(7, 0)))
GO
INSERT [dbo].[markabilgileri] ([kategori], [marka], [kategori_ID]) VALUES (N'Meyve', N'---', NULL)
INSERT [dbo].[markabilgileri] ([kategori], [marka], [kategori_ID]) VALUES (N'kozmetijk', N'aa', NULL)
INSERT [dbo].[markabilgileri] ([kategori], [marka], [kategori_ID]) VALUES (N'ilaç', N'adaf', NULL)
INSERT [dbo].[markabilgileri] ([kategori], [marka], [kategori_ID]) VALUES (N'ilaç', N'et', NULL)
INSERT [dbo].[markabilgileri] ([kategori], [marka], [kategori_ID]) VALUES (N'İcecek', N'Kola', CAST(123 AS Numeric(7, 0)))
INSERT [dbo].[markabilgileri] ([kategori], [marka], [kategori_ID]) VALUES (N'Et', N'Lezita', CAST(124 AS Numeric(7, 0)))
INSERT [dbo].[markabilgileri] ([kategori], [marka], [kategori_ID]) VALUES (N'Sebze', N'sebze', NULL)
GO
INSERT [dbo].[müsteri] ([tel], [ad], [soyad], [adres], [email], [puan]) VALUES (N'007', N'Resul', N'Kirti', N'qwert', N'qwert', NULL)
INSERT [dbo].[müsteri] ([tel], [ad], [soyad], [adres], [email], [puan]) VALUES (N'008', N'Nurettin', N'Memisoglu', N'qwert', N'qwert', NULL)
INSERT [dbo].[müsteri] ([tel], [ad], [soyad], [adres], [email], [puan]) VALUES (N'01', N'-', N'-', N'-', N'-', NULL)
INSERT [dbo].[müsteri] ([tel], [ad], [soyad], [adres], [email], [puan]) VALUES (N'535', N'Eray', N'Sirdas', N'qwert', N'qwert', NULL)
GO
INSERT [dbo].[satis] ([tel], [ad], [soyad], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih], [puan], [satis_ID], [calisan_ID]) VALUES (N'535', N'Eray', N'', N'12', N'Portakal', 10, CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), N'30 Ara 2022 14:30:02', NULL, CAST(62 AS Numeric(7, 0)), NULL)
INSERT [dbo].[satis] ([tel], [ad], [soyad], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih], [puan], [satis_ID], [calisan_ID]) VALUES (N'01', N'-', N'', N'1', N'pepsi', 1, CAST(15.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), N'28 Ara 2022 03:33:49', NULL, CAST(66 AS Numeric(7, 0)), NULL)
INSERT [dbo].[satis] ([tel], [ad], [soyad], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih], [puan], [satis_ID], [calisan_ID]) VALUES (N'535', N'Eray', N'', N'12', N'Portakal', 150, CAST(10.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), N'30 Ara 2022 14:29:09', NULL, CAST(77 AS Numeric(7, 0)), NULL)
INSERT [dbo].[satis] ([tel], [ad], [soyad], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih], [puan], [satis_ID], [calisan_ID]) VALUES (N'535', N'Eray', N'', N'12', N'Portakal', 1, CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), N'28 Ara 2022 03:03:29', NULL, CAST(78 AS Numeric(7, 0)), NULL)
INSERT [dbo].[satis] ([tel], [ad], [soyad], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih], [puan], [satis_ID], [calisan_ID]) VALUES (N'01', N'-', N'', N'1', N'pepsi', 1, CAST(15.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), N'28 Ara 2022 03:18:50', NULL, CAST(88 AS Numeric(7, 0)), NULL)
GO
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [puan], [tarih]) VALUES (N'1', N'İcecek', N'Kola', N'pepsi', -91, CAST(4.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), 5, N'27 Ara 2022 03:25:27')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [puan], [tarih]) VALUES (N'12', N'Meyve', N'---', N'Portakal', -9, CAST(2.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 5, N'27 Ara 2022 09:31:23')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [puan], [tarih]) VALUES (N'123', N'ilaç', N'adaf', N'fvehj', 121, CAST(12.00 AS Decimal(18, 2)), CAST(23.00 AS Decimal(18, 2)), 2, N'27 Ara 2022 07:20:06')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [puan], [tarih]) VALUES (N'13', N'Meyve', N'---', N'Erik', 44, CAST(9.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), 6, N'27 Ara 2022 09:32:11')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [puan], [tarih]) VALUES (N'14', N'Et', N'Lezita', N'Salam', 149, CAST(25.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), 7, N'27 Ara 2022 09:33:10')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [puan], [tarih]) VALUES (N'30', N'Sebze', N'sebze', N'Marul', 52, CAST(5.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), 3, N'27 Ara 2022 10:52:54')
GO
INSERT [dbo].[users] ([calisan_ID], [departman_ID], [usr], [pass]) VALUES (CAST(1 AS Numeric(7, 0)), NULL, N'admin', N'4321')
INSERT [dbo].[users] ([calisan_ID], [departman_ID], [usr], [pass]) VALUES (CAST(2 AS Numeric(7, 0)), NULL, N'guest', N'1234')
GO
ALTER TABLE [dbo].[markabilgileri]  WITH CHECK ADD  CONSTRAINT [FK_markabilgileri_kategoribilgileri] FOREIGN KEY([kategori_ID])
REFERENCES [dbo].[kategoribilgileri] ([kategori_ID])
GO
ALTER TABLE [dbo].[markabilgileri] CHECK CONSTRAINT [FK_markabilgileri_kategoribilgileri]
GO
ALTER TABLE [dbo].[satis]  WITH CHECK ADD  CONSTRAINT [F_SATIS_REFERENCE_URUN] FOREIGN KEY([barkodno])
REFERENCES [dbo].[urun] ([barkodno])
GO
ALTER TABLE [dbo].[satis] CHECK CONSTRAINT [F_SATIS_REFERENCE_URUN]
GO
ALTER TABLE [dbo].[satis]  WITH CHECK ADD  CONSTRAINT [FK_satis_müsteri] FOREIGN KEY([tel])
REFERENCES [dbo].[müsteri] ([tel])
GO
ALTER TABLE [dbo].[satis] CHECK CONSTRAINT [FK_satis_müsteri]
GO
ALTER TABLE [dbo].[satis]  WITH CHECK ADD  CONSTRAINT [FK_satis_users] FOREIGN KEY([calisan_ID])
REFERENCES [dbo].[users] ([calisan_ID])
GO
ALTER TABLE [dbo].[satis] CHECK CONSTRAINT [FK_satis_users]
GO
ALTER TABLE [dbo].[sepet]  WITH CHECK ADD  CONSTRAINT [F_SEPET_REFERENCE_URUN] FOREIGN KEY([barkodno])
REFERENCES [dbo].[urun] ([barkodno])
GO
ALTER TABLE [dbo].[sepet] CHECK CONSTRAINT [F_SEPET_REFERENCE_URUN]
GO
ALTER TABLE [dbo].[sepet]  WITH CHECK ADD  CONSTRAINT [FK_sepet_müsteri] FOREIGN KEY([tel])
REFERENCES [dbo].[müsteri] ([tel])
GO
ALTER TABLE [dbo].[sepet] CHECK CONSTRAINT [FK_sepet_müsteri]
GO
ALTER TABLE [dbo].[sepet]  WITH CHECK ADD  CONSTRAINT [FK_sepet_users] FOREIGN KEY([calisan_ID])
REFERENCES [dbo].[users] ([calisan_ID])
GO
ALTER TABLE [dbo].[sepet] CHECK CONSTRAINT [FK_sepet_users]
GO
ALTER TABLE [dbo].[urun]  WITH CHECK ADD  CONSTRAINT [F_URUN_REFERENCE_MARKABİLGİLERİ] FOREIGN KEY([marka])
REFERENCES [dbo].[markabilgileri] ([marka])
GO
ALTER TABLE [dbo].[urun] CHECK CONSTRAINT [F_URUN_REFERENCE_MARKABİLGİLERİ]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_departmanlar] FOREIGN KEY([departman_ID])
REFERENCES [dbo].[departmanlar] ([departman_ID])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_departmanlar]
GO
USE [master]
GO
ALTER DATABASE [marketoto3] SET  READ_WRITE 
GO
