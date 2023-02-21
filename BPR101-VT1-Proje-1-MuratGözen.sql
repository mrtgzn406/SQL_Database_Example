USE [master]
GO
/****** Veritabanýný Oluþturma ******/
CREATE DATABASE [db_MuratGozen]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BPR101-VT1-Proje-1-Murat_Gözen-SQLScript', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BPR101-VT1-Proje-1-Murat_Gözen-SQLScript.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BPR101-VT1-Proje-1-Murat_Gözen-SQLScript_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BPR101-VT1-Proje-1-Murat_Gözen-SQLScript_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [db_MuratGozen] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_MuratGozen].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_MuratGozen] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_MuratGozen] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_MuratGozen] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_MuratGozen] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_MuratGozen] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_MuratGozen] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_MuratGozen] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_MuratGozen] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_MuratGozen] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_MuratGozen] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_MuratGozen] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_MuratGozen] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_MuratGozen] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_MuratGozen] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_MuratGozen] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_MuratGozen] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_MuratGozen] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_MuratGozen] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_MuratGozen] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_MuratGozen] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_MuratGozen] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_MuratGozen] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_MuratGozen] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_MuratGozen] SET  MULTI_USER 
GO
ALTER DATABASE [db_MuratGozen] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_MuratGozen] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_MuratGozen] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_MuratGozen] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_MuratGozen] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_MuratGozen] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [db_MuratGozen] SET QUERY_STORE = OFF
GO
USE [db_MuratGozen]
GO
/****** Tablolarý ve Anahtar Alanlarý Oluþturma ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Bolumler](
	[Bolum_ID] [int] IDENTITY(1,1) NOT NULL,
	[Bolum_Adi] [nvarchar](50) NULL,
	[Bolum_Tel] [nvarchar](15) NULL,
	[Mudur_ID] [int] NULL,
 CONSTRAINT [PK_tbl_Bolumler] PRIMARY KEY CLUSTERED 
(
	[Bolum_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Kategoriler]    Script Date: 30.12.2021 02:50:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Kategoriler](
	[Kategori_ID] [int] IDENTITY(1,1) NOT NULL,
	[Cinsiyet] [nvarchar](10) NULL,
	[Unvan] [nvarchar](50) NULL,
	[Kent_Adi] [nvarchar](50) NULL,
	[Il_Kodu] [nvarchar](50) NULL,
	[Il_Adi] [nvarchar](50) NULL,
	[Ulke] [nvarchar](50) NULL,
	[Ay_Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[Kategori_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Personeller]    Script Date: 30.12.2021 02:50:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Personeller](
	[Pers_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pers_Adi] [nvarchar](50) NULL,
	[Pers_Soyadi] [nvarchar](50) NULL,
	[Pers_DTarihi] [smalldatetime] NULL,
	[Pers_Ise_Giris_Tarihi] [smalldatetime] NULL,
	[Pers_Isten_Cikis_Tarihi] [smalldatetime] NULL,
	[Pers_Adresi] [nvarchar](max) NULL,
	[Pers_Kenti] [nvarchar](50) NULL,
	[Pers_Ili] [nvarchar](50) NULL,
	[Pers_Il_Kodu] [nvarchar](50) NULL,
	[Pers_Tel] [nvarchar](50) NULL,
	[Pers_Cep] [nvarchar](50) NULL,
	[Pers_Aktifmi] [bit] NULL,
	[Pers_Email] [nvarchar](50) NULL,
	[Bolum_ID] [int] NULL,
	[Cinsiyet_ID] [int] NULL,
	[Unvan_ID] [int] NULL,
	[Pers_Foto] [nchar](10) NULL,
	[Pers_CV] [nvarchar](350) NULL,
	[Pers_CV_File] [nvarchar](350) NULL,
	[Pers_CV_Web] [nvarchar](350) NULL,
	[Kaydeden] [nvarchar](50) NULL,
	[Kayit_Tarihi] [smalldatetime] NULL,
 CONSTRAINT [PK_tbl_Personeller] PRIMARY KEY CLUSTERED 
(
	[Pers_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PersonelMaaslari]    Script Date: 30.12.2021 02:50:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PersonelMaaslari](
	[Maas_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pers_ID] [int] NOT NULL,
	[Maas_Odeme_Tarihi] [smalldatetime] NULL,
	[Maas_Tutari] [smallmoney] NULL,
	[Maas_Komisyon] [smallmoney] NULL,
	[Ay_ID] [int] NULL,
 CONSTRAINT [PK_tbl_PersonelMaaslari] PRIMARY KEY CLUSTERED 
(
	[Maas_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Verileri Girme ******/
SET IDENTITY_INSERT [dbo].[tbl_Bolumler] ON 

INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Mudur_ID]) VALUES (1, N'biliþim sistemi', N'905246823596', 1)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Mudur_ID]) VALUES (2, N'pazarlama', N'902165879462', 2)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Mudur_ID]) VALUES (3, N'satýþ', N'902123589546', 3)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Mudur_ID]) VALUES (4, N'muhasebe', N'905358469278', 4)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Mudur_ID]) VALUES (5, N'finans', N'905459866752', 4)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Mudur_ID]) VALUES (6, N'yönetim', N'902163214856', 4)
SET IDENTITY_INSERT [dbo].[tbl_Bolumler] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Kategoriler] ON 

INSERT [dbo].[tbl_Kategoriler] ([Kategori_ID], [Cinsiyet], [Unvan], [Kent_Adi], [Il_Kodu], [Il_Adi], [Ulke], [Ay_Adi]) VALUES (1, N'Erkek     ', N'vt yöneticisi', N'merkez', N'08', N'ankara', N'abd', N'ocak')
INSERT [dbo].[tbl_Kategoriler] ([Kategori_ID], [Cinsiyet], [Unvan], [Kent_Adi], [Il_Kodu], [Il_Adi], [Ulke], [Ay_Adi]) VALUES (2, N'Kadýn     ', N'satýþ elemaný', N'manavgat', N'12', N'zonguldak', N'katar', N'þubat')
INSERT [dbo].[tbl_Kategoriler] ([Kategori_ID], [Cinsiyet], [Unvan], [Kent_Adi], [Il_Kodu], [Il_Adi], [Ulke], [Ay_Adi]) VALUES (3, NULL, N'pazarlamacý', N'of', N'56', N'istanbul', N'fransa', N'mart')
INSERT [dbo].[tbl_Kategoriler] ([Kategori_ID], [Cinsiyet], [Unvan], [Kent_Adi], [Il_Kodu], [Il_Adi], [Ulke], [Ay_Adi]) VALUES (4, NULL, N'ofis yöneticisi', N'reyhanlý', N'87', N'amasya', N'suudi arabistan', N'nisan')
INSERT [dbo].[tbl_Kategoriler] ([Kategori_ID], [Cinsiyet], [Unvan], [Kent_Adi], [Il_Kodu], [Il_Adi], [Ulke], [Ay_Adi]) VALUES (5, NULL, N'CIO', N'ataþehir', N'36', N'antalya', N'kuveyt', N'mayýs')
INSERT [dbo].[tbl_Kategoriler] ([Kategori_ID], [Cinsiyet], [Unvan], [Kent_Adi], [Il_Kodu], [Il_Adi], [Ulke], [Ay_Adi]) VALUES (6, NULL, N'CEO', N'uzundere', N'52', N'hatay', N'katar', N'haziran')
INSERT [dbo].[tbl_Kategoriler] ([Kategori_ID], [Cinsiyet], [Unvan], [Kent_Adi], [Il_Kodu], [Il_Adi], [Ulke], [Ay_Adi]) VALUES (7, NULL, NULL, N'kilis', N'49', N'ordu', N'BAE', N'temmuz')
INSERT [dbo].[tbl_Kategoriler] ([Kategori_ID], [Cinsiyet], [Unvan], [Kent_Adi], [Il_Kodu], [Il_Adi], [Ulke], [Ay_Adi]) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, N'aðustos')
INSERT [dbo].[tbl_Kategoriler] ([Kategori_ID], [Cinsiyet], [Unvan], [Kent_Adi], [Il_Kodu], [Il_Adi], [Ulke], [Ay_Adi]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, N'eylül')
INSERT [dbo].[tbl_Kategoriler] ([Kategori_ID], [Cinsiyet], [Unvan], [Kent_Adi], [Il_Kodu], [Il_Adi], [Ulke], [Ay_Adi]) VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, N'ekim')
INSERT [dbo].[tbl_Kategoriler] ([Kategori_ID], [Cinsiyet], [Unvan], [Kent_Adi], [Il_Kodu], [Il_Adi], [Ulke], [Ay_Adi]) VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, N'kasým')
INSERT [dbo].[tbl_Kategoriler] ([Kategori_ID], [Cinsiyet], [Unvan], [Kent_Adi], [Il_Kodu], [Il_Adi], [Ulke], [Ay_Adi]) VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, N'aralýk')
SET IDENTITY_INSERT [dbo].[tbl_Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Personeller] ON 

INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Ise_Giris_Tarihi], [Pers_Isten_Cikis_Tarihi], [Pers_Adresi], [Pers_Kenti], [Pers_Ili], [Pers_Il_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Aktifmi], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Foto], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Kaydeden], [Kayit_Tarihi]) VALUES (1, N'mustafa', N'çoruh', CAST(N'1968-05-01T00:00:00' AS SmallDateTime), CAST(N'2003-09-02T00:00:00' AS SmallDateTime), NULL, N'uzun sokak, numara 43', N'of', N'trabzon', N'61', N'905846284492', N'905213695425', 1, N'mstfcrh@gmail.com', 1, 1, 5, NULL, N'1968 yýlýnda Koç Üniversitesi mekatronik bölümünü birincilikle bitirmiþtir.', NULL, N'1986 yýlýnda Trabzon''un of ilçesinde doðmuþtur. Evli ve 5 çocuk babasý', N'murat gözen', CAST(N'2021-12-27T00:00:00' AS SmallDateTime))
INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Ise_Giris_Tarihi], [Pers_Isten_Cikis_Tarihi], [Pers_Adresi], [Pers_Kenti], [Pers_Ili], [Pers_Il_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Aktifmi], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Foto], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Kaydeden], [Kayit_Tarihi]) VALUES (2, N'mahmut', N'yýldýrým', CAST(N'1987-05-31T00:00:00' AS SmallDateTime), CAST(N'2008-12-15T00:00:00' AS SmallDateTime), CAST(N'2021-10-09T00:00:00' AS SmallDateTime), N'manolya sokak, numara 87/A', N'cizre', N'hakkari', N'30', N'905249682541', N'905263548691', 0, N'muho30@hotmail.com', 4, 1, 6, NULL, N'1987 yýlýnda düzce üniversitesi bankacalýk ve sigorta bölümünden mezun olmuþtur.', NULL, NULL, N'emine trahan', CAST(N'2009-10-08T00:00:00' AS SmallDateTime))
INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Ise_Giris_Tarihi], [Pers_Isten_Cikis_Tarihi], [Pers_Adresi], [Pers_Kenti], [Pers_Ili], [Pers_Il_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Aktifmi], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Foto], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Kaydeden], [Kayit_Tarihi]) VALUES (3, N'buðra', N'posbýyýk', CAST(N'1966-08-02T00:00:00' AS SmallDateTime), CAST(N'2016-08-12T00:00:00' AS SmallDateTime), NULL, N'behçet caddesi, güliz apartman,, numara 57/A', N'alanya', N'antalya', N'07', NULL, N'905354812697', 1, NULL, 2, 1, 3, NULL, N'1966 yýlýnda doðdu, evli ve 10 çocuk babasýdýr, torna tezgahý konusunda ustalýðý vardýr.', NULL, NULL, N'emine trahan', CAST(N'2005-09-11T00:00:00' AS SmallDateTime))
INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Ise_Giris_Tarihi], [Pers_Isten_Cikis_Tarihi], [Pers_Adresi], [Pers_Kenti], [Pers_Ili], [Pers_Il_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Aktifmi], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Foto], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Kaydeden], [Kayit_Tarihi]) VALUES (4, N'kevser', N'tireli', CAST(N'1997-12-05T00:00:00' AS SmallDateTime), CAST(N'2003-08-05T00:00:00' AS SmallDateTime), NULL, N'güliz sokak, numara 101, ataþehir/istanbul', N'merkez', N'konya', N'42', NULL, N'905428621489', 1, N'kevserezor@gmail.com', 2, 2, 3, NULL, N'1997 yýlýnda doðdu ortaokulu ve liseyi konya''da bitirdikten sonra Ýstanbul''da ÝTÜ konservatuar bölümünü kazandý', NULL, NULL, N'murat gözen', CAST(N'2003-09-09T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[tbl_Personeller] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_PersonelMaaslari] ON 

INSERT [dbo].[tbl_PersonelMaaslari] ([Maas_ID], [Pers_ID], [Maas_Odeme_Tarihi], [Maas_Tutari], [Maas_Komisyon], [Ay_ID]) VALUES (1, 1, CAST(N'2021-07-01T00:00:00' AS SmallDateTime), 3540.0000, 2521.0000, 7)
INSERT [dbo].[tbl_PersonelMaaslari] ([Maas_ID], [Pers_ID], [Maas_Odeme_Tarihi], [Maas_Tutari], [Maas_Komisyon], [Ay_ID]) VALUES (2, 1, CAST(N'2021-08-02T00:00:00' AS SmallDateTime), 4780.0000, 359.0000, 5)
INSERT [dbo].[tbl_PersonelMaaslari] ([Maas_ID], [Pers_ID], [Maas_Odeme_Tarihi], [Maas_Tutari], [Maas_Komisyon], [Ay_ID]) VALUES (3, 1, CAST(N'2000-08-05T00:00:00' AS SmallDateTime), 6234.0000, 1685.0000, 4)
INSERT [dbo].[tbl_PersonelMaaslari] ([Maas_ID], [Pers_ID], [Maas_Odeme_Tarihi], [Maas_Tutari], [Maas_Komisyon], [Ay_ID]) VALUES (4, 1, CAST(N'2000-08-05T00:00:00' AS SmallDateTime), 4289.0000, 2513.0000, 2)
INSERT [dbo].[tbl_PersonelMaaslari] ([Maas_ID], [Pers_ID], [Maas_Odeme_Tarihi], [Maas_Tutari], [Maas_Komisyon], [Ay_ID]) VALUES (5, 1, CAST(N'2021-08-02T00:00:00' AS SmallDateTime), 3751.0000, 3000.0000, 4)
INSERT [dbo].[tbl_PersonelMaaslari] ([Maas_ID], [Pers_ID], [Maas_Odeme_Tarihi], [Maas_Tutari], [Maas_Komisyon], [Ay_ID]) VALUES (6, 1, CAST(N'2000-08-05T00:00:00' AS SmallDateTime), 3516.0000, 1031.0100, 6)
INSERT [dbo].[tbl_PersonelMaaslari] ([Maas_ID], [Pers_ID], [Maas_Odeme_Tarihi], [Maas_Tutari], [Maas_Komisyon], [Ay_ID]) VALUES (7, 2, CAST(N'2019-05-09T00:00:00' AS SmallDateTime), 4289.0000, 400.8400, 12)
INSERT [dbo].[tbl_PersonelMaaslari] ([Maas_ID], [Pers_ID], [Maas_Odeme_Tarihi], [Maas_Tutari], [Maas_Komisyon], [Ay_ID]) VALUES (8, 2, CAST(N'2021-08-02T00:00:00' AS SmallDateTime), 7521.0000, 1235.0000, 3)
INSERT [dbo].[tbl_PersonelMaaslari] ([Maas_ID], [Pers_ID], [Maas_Odeme_Tarihi], [Maas_Tutari], [Maas_Komisyon], [Ay_ID]) VALUES (9, 3, CAST(N'2019-05-09T00:00:00' AS SmallDateTime), 7020.0000, 985.5600, 12)
INSERT [dbo].[tbl_PersonelMaaslari] ([Maas_ID], [Pers_ID], [Maas_Odeme_Tarihi], [Maas_Tutari], [Maas_Komisyon], [Ay_ID]) VALUES (10, 4, CAST(N'2021-07-01T00:00:00' AS SmallDateTime), 6497.0000, 1235.4800, 6)
SET IDENTITY_INSERT [dbo].[tbl_PersonelMaaslari] OFF
GO

/****** Tablo Referans Alan (Foreign Key) ve Default’larý Oluþturma ******/
ALTER TABLE [dbo].[tbl_Kategoriler] ADD  CONSTRAINT [DF_tbl_Kategoriler_Cinsiyet]  DEFAULT (N'erkek') FOR [Cinsiyet]
GO
ALTER TABLE [dbo].[tbl_Kategoriler] ADD  CONSTRAINT [DF_tbl_Kategoriler_Ulke]  DEFAULT (N'türkiye') FOR [Ulke]
GO
ALTER TABLE [dbo].[tbl_Personeller] ADD  CONSTRAINT [DF_tbl_Personeller_Pers_Ise_Giris_Tarihi]  DEFAULT (getdate()) FOR [Pers_Ise_Giris_Tarihi]
GO
ALTER TABLE [dbo].[tbl_PersonelMaaslari] ADD  CONSTRAINT [DF_tbl_PersonelMaaslari_Maas_Tutari]  DEFAULT ((4250)) FOR [Maas_Tutari]
GO
ALTER TABLE [dbo].[tbl_PersonelMaaslari] ADD  CONSTRAINT [DF_tbl_PersonelMaaslari_Maas_Komisyon]  DEFAULT ((200)) FOR [Maas_Komisyon]
GO
ALTER TABLE [dbo].[tbl_Personeller]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personeller_tbl_Bolumler] FOREIGN KEY([Bolum_ID])
REFERENCES [dbo].[tbl_Bolumler] ([Bolum_ID])
GO
ALTER TABLE [dbo].[tbl_Personeller] CHECK CONSTRAINT [FK_tbl_Personeller_tbl_Bolumler]
GO
ALTER TABLE [dbo].[tbl_Personeller]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personeller_tbl_Kategoriler] FOREIGN KEY([Unvan_ID])
REFERENCES [dbo].[tbl_Kategoriler] ([Kategori_ID])
GO
ALTER TABLE [dbo].[tbl_Personeller] CHECK CONSTRAINT [FK_tbl_Personeller_tbl_Kategoriler]
GO
ALTER TABLE [dbo].[tbl_PersonelMaaslari]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PersonelMaaslari_tbl_Kategoriler] FOREIGN KEY([Ay_ID])
REFERENCES [dbo].[tbl_Kategoriler] ([Kategori_ID])
GO
ALTER TABLE [dbo].[tbl_PersonelMaaslari] CHECK CONSTRAINT [FK_tbl_PersonelMaaslari_tbl_Kategoriler]
GO
ALTER TABLE [dbo].[tbl_PersonelMaaslari]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PersonelMaaslari_tbl_Personeller] FOREIGN KEY([Pers_ID])
REFERENCES [dbo].[tbl_Personeller] ([Pers_ID])
GO
ALTER TABLE [dbo].[tbl_PersonelMaaslari] CHECK CONSTRAINT [FK_tbl_PersonelMaaslari_tbl_Personeller]
GO
USE [db_MuratGozen]
GO
ALTER DATABASE [db_MuratGozen] SET  READ_WRITE 
GO

ALTER TABLE tbl_Personeller ADD Pers_Isim AS (Pers_Adi + ' ' + Pers_Soyadi)
ALTER TABLE tbl_PersonelMaaslari ADD Maas_Toplam AS (Maas_Tutari + Maas_Komisyon)
ALTER TABLE tbl_PersonelMaaslari ADD Maas_Yili AS (datepart(year,[Maas_Odeme_Tarihi]))
GO

/****** Tablolarý Sorgulama ******/
SELECT * FROM tbl_Kategoriler
SELECT * FROM tbl_Bolumler
SELECT * FROM tbl_Personeller
SELECT * FROM tbl_PersonelMaaslari
