USE [master]
GO
/****** Object:  Database [HospitalDoctorRecord]    Script Date: 26-11-2019 04:35:54 AM ******/
CREATE DATABASE [HospitalDoctorRecord]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HospitalDoctorRecord', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\HospitalDoctorRecord.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HospitalDoctorRecord_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\HospitalDoctorRecord_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HospitalDoctorRecord] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HospitalDoctorRecord].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HospitalDoctorRecord] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET ARITHABORT OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HospitalDoctorRecord] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HospitalDoctorRecord] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HospitalDoctorRecord] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HospitalDoctorRecord] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HospitalDoctorRecord] SET  MULTI_USER 
GO
ALTER DATABASE [HospitalDoctorRecord] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HospitalDoctorRecord] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HospitalDoctorRecord] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HospitalDoctorRecord] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HospitalDoctorRecord] SET DELAYED_DURABILITY = DISABLED 
GO
USE [HospitalDoctorRecord]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 26-11-2019 04:35:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Speciality] [nvarchar](50) NULL,
	[Qualification] [nvarchar](50) NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Doctor] ON 

GO
INSERT [dbo].[Doctor] ([ID], [Name], [Email], [Mobile], [Speciality], [Qualification]) VALUES (1, N'Nirmal Singh', N'singhnirmal128@gmail.com', N'9815276871', N'Heart', N'MD')
GO
SET IDENTITY_INSERT [dbo].[Doctor] OFF
GO
USE [master]
GO
ALTER DATABASE [HospitalDoctorRecord] SET  READ_WRITE 
GO
