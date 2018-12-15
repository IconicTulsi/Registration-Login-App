USE [master]
GO

/****** Object:  Database [HotelRoomBooking]    Script Date: 12/15/2018 7:59:17 AM ******/
CREATE DATABASE [HotelRoomBooking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HotelRoomBooking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\HotelRoomBooking.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HotelRoomBooking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\HotelRoomBooking_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [HotelRoomBooking] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelRoomBooking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [HotelRoomBooking] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET ARITHABORT OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [HotelRoomBooking] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [HotelRoomBooking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [HotelRoomBooking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET  DISABLE_BROKER 
GO

ALTER DATABASE [HotelRoomBooking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [HotelRoomBooking] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET RECOVERY FULL 
GO

ALTER DATABASE [HotelRoomBooking] SET  MULTI_USER 
GO

ALTER DATABASE [HotelRoomBooking] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [HotelRoomBooking] SET DB_CHAINING OFF 
GO

ALTER DATABASE [HotelRoomBooking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [HotelRoomBooking] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [HotelRoomBooking] SET  READ_WRITE 
GO

