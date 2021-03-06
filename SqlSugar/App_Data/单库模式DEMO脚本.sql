USE [master]
GO
/****** Object:  Database [SqlSugarTest]    Script Date: 2015/12/17 17:05:42 ******/
CREATE DATABASE [SqlSugarTest]
 
GO
ALTER DATABASE [SqlSugarTest] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SqlSugarTest].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [SqlSugarTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SqlSugarTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SqlSugarTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SqlSugarTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SqlSugarTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [SqlSugarTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SqlSugarTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SqlSugarTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SqlSugarTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SqlSugarTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SqlSugarTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SqlSugarTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SqlSugarTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SqlSugarTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SqlSugarTest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SqlSugarTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SqlSugarTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SqlSugarTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SqlSugarTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SqlSugarTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SqlSugarTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SqlSugarTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SqlSugarTest] SET RECOVERY FULL 
GO
ALTER DATABASE [SqlSugarTest] SET  MULTI_USER 
GO
ALTER DATABASE [SqlSugarTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SqlSugarTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SqlSugarTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SqlSugarTest] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SqlSugarTest] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SqlSugarTest', N'ON'
GO
USE [SqlSugarTest]
GO
/****** Object:  Table [dbo].[InsertTest]    Script Date: 2015/12/17 17:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InsertTest](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[v1] [varchar](50) NULL,
	[v2] [varchar](50) NULL,
	[v3] [varchar](50) NULL,
	[int1] [int] NULL,
	[d1] [datetime] NULL,
	[txt] [text] NULL,
 CONSTRAINT [PK_InsertTest] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[School]    Script Date: 2015/12/17 17:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[School](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2015/12/17 17:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[sch_id] [int] NULL,
	[sex] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 2015/12/17 17:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subject](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [int] NULL,
	[name] [varchar](150) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TestOfNull]    Script Date: 2015/12/17 17:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TestOfNull](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[createDate] [datetime] NULL,
	[bytes] [binary](250) NULL,
 CONSTRAINT [PK__TestOfNu__3213E83F07773285] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [SqlSugarTest] SET  READ_WRITE 
GO
