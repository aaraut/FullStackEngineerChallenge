USE [master]
GO
/****** Object:  Database [Company]    Script Date: 14-06-2021 00:14:15 ******/
CREATE DATABASE [Company]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Company', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Company.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Company_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Company.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Company] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Company].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Company] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [Company] SET ANSI_NULLS ON 
GO
ALTER DATABASE [Company] SET ANSI_PADDING ON 
GO
ALTER DATABASE [Company] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [Company] SET ARITHABORT ON 
GO
ALTER DATABASE [Company] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Company] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Company] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Company] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Company] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [Company] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [Company] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Company] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [Company] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Company] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Company] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Company] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Company] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Company] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Company] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Company] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Company] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Company] SET RECOVERY FULL 
GO
ALTER DATABASE [Company] SET  MULTI_USER 
GO
ALTER DATABASE [Company] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Company] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Company] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Company] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Company] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Company] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Company] SET QUERY_STORE = OFF
GO
USE [Company]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 14-06-2021 00:14:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[Email] [text] NOT NULL,
	[Password] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 14-06-2021 00:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[AssignedID] [int] NOT NULL,
	[Description] [text] NULL,
	[EmpID] [int] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Employee] ([ID], [Name], [IsAdmin], [Email], [Password]) VALUES (101, N'Alekh R', 1, N'Alekh.r@gmail.com', N'Password-101')
INSERT [dbo].[Employee] ([ID], [Name], [IsAdmin], [Email], [Password]) VALUES (102, N'John Pete', 0, N'John.a@gmail.com', N'Password-101')
INSERT [dbo].[Employee] ([ID], [Name], [IsAdmin], [Email], [Password]) VALUES (103, N'Elon M', 0, N'Elon.m@gmail.com', N'Password-103')
INSERT [dbo].[Employee] ([ID], [Name], [IsAdmin], [Email], [Password]) VALUES (104, N'Jeff B', 0, N'Jeff.b@gmail.com', N'Password-104')
INSERT [dbo].[Employee] ([ID], [Name], [IsAdmin], [Email], [Password]) VALUES (105, N'Bill Gates', 0, N'Bill.g@gmail.com', N'Password-105')
INSERT [dbo].[Employee] ([ID], [Name], [IsAdmin], [Email], [Password]) VALUES (106, N'Mark Z', 0, N'Mark.z@gmail.com', N'Password-106')
INSERT [dbo].[Employee] ([ID], [Name], [IsAdmin], [Email], [Password]) VALUES (107, N'Warren B', 0, N'Warren.b@gmail.com', N'Password-107')
INSERT [dbo].[Employee] ([ID], [Name], [IsAdmin], [Email], [Password]) VALUES (108, N'Jack Ma', 0, N'jack.ma@gmail.com', N'Password-108')
INSERT [dbo].[Employee] ([ID], [Name], [IsAdmin], [Email], [Password]) VALUES (109, N'Jim Walton', 0, N'Jim.w@gmail.com', N'Password-109')
INSERT [dbo].[Employee] ([ID], [Name], [IsAdmin], [Email], [Password]) VALUES (110, N'Larry Page', 0, N'Larry.p@gmail.com', N'Password-110')
INSERT [dbo].[Employee] ([ID], [Name], [IsAdmin], [Email], [Password]) VALUES (111, N'Larry Ellison', 0, N'Larry.e@gmail.com', N'Password-111')
INSERT [dbo].[Employee] ([ID], [Name], [IsAdmin], [Email], [Password]) VALUES (112, N'Mukesh Ambani', 0, N'Mukesh.a@gmail.com', N'Password-112')
INSERT [dbo].[Employee] ([ID], [Name], [IsAdmin], [Email], [Password]) VALUES (113, N'Alex-B', 0, N'alex-b@gmail.com', N'Password-113')
INSERT [dbo].[Employee] ([ID], [Name], [IsAdmin], [Email], [Password]) VALUES (114, N'Bliss', 0, N'bliss@gmail.com', N'Password-114')
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (102, NULL, 103, 1)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (106, N'Stressout person', 102, 2)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (110, NULL, 102, 3)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (103, N'Updated feedback 2', 102, 5)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (104, NULL, 102, 6)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (110, NULL, 105, 9)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (105, N'test', 104, 10)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (102, NULL, 106, 11)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (108, NULL, 107, 12)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (109, NULL, 108, 13)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (110, NULL, 108, 14)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (101, NULL, 109, 15)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (111, NULL, 110, 16)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (110, NULL, 111, 21)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (110, NULL, 113, 23)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (104, NULL, 105, 26)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (102, NULL, 114, 33)
INSERT [dbo].[Feedback] ([AssignedID], [Description], [EmpID], [ID]) VALUES (105, NULL, 102, 36)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employee] ([ID])
GO
USE [master]
GO
ALTER DATABASE [Company] SET  READ_WRITE 
GO
