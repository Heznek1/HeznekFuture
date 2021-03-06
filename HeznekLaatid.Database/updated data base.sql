USE [master]
GO
/****** Object:  Database [HeznekDB]    Script Date: 03/12/2018 01:20:06 ******/
CREATE DATABASE [HeznekDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HeznekDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVERDEV\MSSQL\DATA\HeznekDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HeznekDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVERDEV\MSSQL\DATA\HeznekDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HeznekDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HeznekDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HeznekDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HeznekDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HeznekDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HeznekDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HeznekDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HeznekDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HeznekDB] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [HeznekDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HeznekDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HeznekDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HeznekDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HeznekDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HeznekDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HeznekDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HeznekDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HeznekDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HeznekDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HeznekDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HeznekDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HeznekDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HeznekDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HeznekDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HeznekDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HeznekDB] SET  MULTI_USER 
GO
ALTER DATABASE [HeznekDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HeznekDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HeznekDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HeznekDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HeznekDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HeznekDB', N'ON'
GO
ALTER DATABASE [HeznekDB] SET QUERY_STORE = OFF
GO
USE [HeznekDB]
GO
/****** Object:  User [IIS APPPOOL\DefaultAppPool]    Script Date: 03/12/2018 01:20:06 ******/
CREATE USER [IIS APPPOOL\DefaultAppPool] FOR LOGIN [IIS APPPOOL\DefaultAppPool] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [IIS APPPOOL\DefaultAppPool]
GO
/****** Object:  Table [dbo].[Academic_Institut]    Script Date: 03/12/2018 01:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Academic_Institut](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[nameOfInstitut] [nvarchar](500) NOT NULL,
	[placeOfInstitute] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Active_Candidate_Info]    Script Date: 03/12/2018 01:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Active_Candidate_Info](
	[idCandidate] [char](9) NOT NULL,
	[psychometric_grade] [int] NULL,
	[worthy_of_advancement] [int] NULL,
	[worthy_of_advancement_grade] [int] NULL,
	[participation_heznek_highSchool] [int] NULL,
	[highSchool_participation] [nvarchar](max) NULL,
	[diagnosis_learning_disabilities] [int] NULL,
	[reason_for_request] [nvarchar](max) NULL,
	[general_life_story] [nvarchar](max) NULL,
	[health_problems] [int] NULL,
	[health_problems_deatails] [nvarchar](max) NULL,
	[financial_difficulties] [int] NULL,
	[financial_difficulties_details] [nvarchar](max) NULL,
	[family_issues] [int] NULL,
	[family_issues_details] [nvarchar](max) NULL,
	[average_wage_father] [int] NULL,
	[average_wage_mother] [int] NULL,
	[disabilty_parents] [int] NULL,
 CONSTRAINT [PK_generalDetailsActiveCandidate] PRIMARY KEY CLUSTERED 
(
	[idCandidate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 03/12/2018 01:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 03/12/2018 01:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[city] [nvarchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact_Candidate]    Script Date: 03/12/2018 01:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact_Candidate](
	[idScholar] [char](9) NOT NULL,
	[idCandidate] [char](9) NOT NULL,
	[dateOfCall] [date] NOT NULL,
	[study_funding] [nvarchar](max) NULL,
	[comments] [nvarchar](max) NULL,
	[return_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[idScholar] ASC,
	[idCandidate] ASC,
	[dateOfCall] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deposits_Scholarship]    Script Date: 03/12/2018 01:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deposits_Scholarship](
	[idScholar] [char](9) NOT NULL,
	[scholarship_sn] [int] NOT NULL,
	[deposite_month] [date] NOT NULL,
	[amount_of_deposit] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idScholar] ASC,
	[scholarship_sn] ASC,
	[deposite_month] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 03/12/2018 01:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[sn] [int] NOT NULL,
	[nameEvent] [nvarchar](300) NOT NULL,
	[subjectEvent] [nvarchar](300) NULL,
	[eventDate] [date] NULL,
	[eventHour] [time](7) NULL,
	[eventLocation] [nvarchar](500) NULL,
	[typeOfParticipants] [int] NOT NULL,
	[numParticipantsExpected] [int] NULL,
	[numOfActualParticipants] [int] NULL,
	[participant_sn] [int] NULL,
 CONSTRAINT [PK_event] PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[File]    Script Date: 03/12/2018 01:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File](
	[nameOfFile] [nvarchar](500) NOT NULL,
	[idOfTheUploader] [char](9) NOT NULL,
	[fileLocation] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[nameOfFile] ASC,
	[idOfTheUploader] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 03/12/2018 01:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[sn] [int] NOT NULL,
	[group_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_groups] PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login_Permissions]    Script Date: 03/12/2018 01:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login_Permissions](
	[id] [char](9) NOT NULL,
	[password] [varchar](10) NULL,
	[userType] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 03/12/2018 01:20:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[idMessage] [int] NOT NULL,
	[idSender] [char](9) NULL,
	[message_subject] [nvarchar](max) NULL,
	[message_content] [nvarchar](max) NULL,
	[send_to_group] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idMessage] ASC,
	[send_to_group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization_Frames_HighSchool]    Script Date: 03/12/2018 01:20:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization_Frames_HighSchool](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[name_of_frame] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participant_Event]    Script Date: 03/12/2018 01:20:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participant_Event](
	[sn] [int] NOT NULL,
	[id_participant] [char](9) NOT NULL,
	[review] [nvarchar](max) NULL,
 CONSTRAINT [PK_Participant_Event] PRIMARY KEY CLUSTERED 
(
	[sn] ASC,
	[id_participant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scholarship]    Script Date: 03/12/2018 01:20:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scholarship](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[scholarshipName] [nvarchar](200) NOT NULL,
	[budgetScholarship] [int] NULL,
	[admission] [nvarchar](4000) NULL,
	[status] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scholarship_Student_Bank]    Script Date: 03/12/2018 01:20:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scholarship_Student_Bank](
	[idScholar] [char](9) NOT NULL,
	[bank_name] [int] NOT NULL,
	[branch_number] [int] NOT NULL,
	[account_number] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idScholar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 03/12/2018 01:20:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[typeOfService] [nvarchar](200) NULL,
	[longOfService] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 03/12/2018 01:20:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[numOfStatus] [int] IDENTITY(1,1) NOT NULL,
	[primaryStatusName] [nvarchar](100) NOT NULL,
	[secondaryStatusName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[numOfStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Scholarship]    Script Date: 03/12/2018 01:20:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Scholarship](
	[id] [char](9) NOT NULL,
	[sn] [int] NOT NULL,
	[amountOfGivanScholarship] [int] NULL,
	[numOfDeposits] [int] NULL,
	[currentYear] [int] NULL,
	[wasGivenInPast] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Volunteer]    Script Date: 03/12/2018 01:20:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Volunteer](
	[id] [char](9) NOT NULL,
	[scholarshipSn] [int] NOT NULL,
	[dateOfVolunteer] [date] NOT NULL,
	[startHour] [datetime] NOT NULL,
	[finishHour] [datetime] NOT NULL,
	[semester] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[scholarshipSn] ASC,
	[dateOfVolunteer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Study_Field]    Script Date: 03/12/2018 01:20:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Study_Field](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[field] [nvarchar](4000) NULL,
	[nameOfDegree] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Profile]    Script Date: 03/12/2018 01:20:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Profile](
	[id] [char](9) NOT NULL,
	[firstName] [nvarchar](50) NOT NULL,
	[lastName] [nvarchar](50) NOT NULL,
	[dateOfBirth] [date] NULL,
	[status] [int] NOT NULL,
	[yearsInTheProgram] [int] NULL,
	[gender] [char](1) NULL,
	[phone] [varchar](10) NULL,
	[email] [varchar](4000) NULL,
	[cityNumber] [int] NULL,
	[address] [nvarchar](4000) NULL,
	[numOfSiblings] [int] NULL,
	[academicParents] [int] NULL,
	[school] [nvarchar](4000) NULL,
	[yearFinishSchool] [int] NULL,
	[typeOfService] [int] NOT NULL,
	[academicInstitution] [int] NULL,
	[studyField] [int] NULL,
	[startYear] [int] NULL,
	[excpectedCompletionYear] [int] NULL,
	[anotherScholarship] [varchar](3) NULL,
	[educationFunding] [nvarchar](4000) NULL,
	[typeOfDegree] [int] NULL,
	[comments] [nvarchar](max) NULL,
	[roleInService] [nvarchar](max) NULL,
	[easeOfService] [int] NULL,
	[residenceWhileStudiyng] [int] NULL,
	[service_description] [nvarchar](max) NULL,
	[averageDegree] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 03/12/2018 01:20:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[numOfType] [int] IDENTITY(1,1) NOT NULL,
	[userType] [nvarchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[numOfType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Active_Candidate_Info] ([idCandidate], [psychometric_grade], [worthy_of_advancement], [worthy_of_advancement_grade], [participation_heznek_highSchool], [highSchool_participation], [diagnosis_learning_disabilities], [reason_for_request], [general_life_story], [health_problems], [health_problems_deatails], [financial_difficulties], [financial_difficulties_details], [family_issues], [family_issues_details], [average_wage_father], [average_wage_mother], [disabilty_parents]) VALUES (N'203936752', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Active_Candidate_Info] ([idCandidate], [psychometric_grade], [worthy_of_advancement], [worthy_of_advancement_grade], [participation_heznek_highSchool], [highSchool_participation], [diagnosis_learning_disabilities], [reason_for_request], [general_life_story], [health_problems], [health_problems_deatails], [financial_difficulties], [financial_difficulties_details], [family_issues], [family_issues_details], [average_wage_father], [average_wage_mother], [disabilty_parents]) VALUES (N'307053214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Bank] ON 

INSERT [dbo].[Bank] ([sn], [name]) VALUES (1, N'בנק אגוד לישראל בע"מ​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (2, N'בנק אוצר החייל בע"מ​​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (3, N'בנק דיסקונט לישראל בע"מ​​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (4, N'בנק דקסיה ישראל בע"מ​​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (5, N'בנק הפועלים בע"מ​​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (6, N'בנק יהב לעובדי המדינה בע"מ​​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (7, N'בנק ירושלים בע"מ​​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (8, N'בנק לאומי לישראל בע"מ​​​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (9, N'בנק מזרחי טפחות בע"מ​​​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (10, N'בנק מסד בע"מ​​​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (11, N'בנק מרכנתיל דיסקונט בע"מ​​​​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (12, N'בנק ערבי ישראלי בע"מ​​​​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (13, N'בנק ערבי ישראלי בע"מ​​​​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (14, N'בנק פועלי אגודת ישראל בע"מ​​​​​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (15, N'הבנק הבינלאומי הראשון לישראל בע"מ​​​​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (16, N'יובנק בע"מ​​​​​')
INSERT [dbo].[Bank] ([sn], [name]) VALUES (17, N'בלה בלה')
SET IDENTITY_INSERT [dbo].[Bank] OFF
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([sn], [city]) VALUES (1, N'אופקים')
INSERT [dbo].[City] ([sn], [city]) VALUES (2, N'אור יהודה')
INSERT [dbo].[City] ([sn], [city]) VALUES (4, N'אור עקיבא')
INSERT [dbo].[City] ([sn], [city]) VALUES (5, N'אילת')
INSERT [dbo].[City] ([sn], [city]) VALUES (6, N'אלעד')
INSERT [dbo].[City] ([sn], [city]) VALUES (7, N'אריאל')
INSERT [dbo].[City] ([sn], [city]) VALUES (8, N'אשדוד')
INSERT [dbo].[City] ([sn], [city]) VALUES (9, N'אשקלון')
INSERT [dbo].[City] ([sn], [city]) VALUES (10, N'באר שבע')
INSERT [dbo].[City] ([sn], [city]) VALUES (11, N'בית שאן')
INSERT [dbo].[City] ([sn], [city]) VALUES (12, N'בית שמש')
INSERT [dbo].[City] ([sn], [city]) VALUES (13, N'ביתר עילית')
INSERT [dbo].[City] ([sn], [city]) VALUES (14, N'בני ברק')
INSERT [dbo].[City] ([sn], [city]) VALUES (15, N'בת ים')
INSERT [dbo].[City] ([sn], [city]) VALUES (16, N'גבעת שמואל')
INSERT [dbo].[City] ([sn], [city]) VALUES (17, N'גבעתיים')
INSERT [dbo].[City] ([sn], [city]) VALUES (18, N'דימונה')
INSERT [dbo].[City] ([sn], [city]) VALUES (19, N'הוד השרון')
INSERT [dbo].[City] ([sn], [city]) VALUES (20, N'הרצליה')
INSERT [dbo].[City] ([sn], [city]) VALUES (21, N'זכרון יעקב')
INSERT [dbo].[City] ([sn], [city]) VALUES (22, N'חדרה')
INSERT [dbo].[City] ([sn], [city]) VALUES (23, N'חולון')
INSERT [dbo].[City] ([sn], [city]) VALUES (24, N'חיפה')
INSERT [dbo].[City] ([sn], [city]) VALUES (25, N'טבריה')
INSERT [dbo].[City] ([sn], [city]) VALUES (26, N'טירת כרמל')
INSERT [dbo].[City] ([sn], [city]) VALUES (27, N'יבנה')
INSERT [dbo].[City] ([sn], [city]) VALUES (28, N'יהוד')
INSERT [dbo].[City] ([sn], [city]) VALUES (29, N'יפו')
INSERT [dbo].[City] ([sn], [city]) VALUES (30, N'יקנעם')
INSERT [dbo].[City] ([sn], [city]) VALUES (31, N'ירושלים')
INSERT [dbo].[City] ([sn], [city]) VALUES (32, N'כפר סבא')
INSERT [dbo].[City] ([sn], [city]) VALUES (33, N'כרמיאל')
INSERT [dbo].[City] ([sn], [city]) VALUES (34, N'לוד')
INSERT [dbo].[City] ([sn], [city]) VALUES (35, N'מגדל העמק')
INSERT [dbo].[City] ([sn], [city]) VALUES (36, N'מודיעין מכבים רעות')
INSERT [dbo].[City] ([sn], [city]) VALUES (37, N'מודיעין עילית')
INSERT [dbo].[City] ([sn], [city]) VALUES (38, N'מטולה')
INSERT [dbo].[City] ([sn], [city]) VALUES (39, N'מעלה אדומים')
INSERT [dbo].[City] ([sn], [city]) VALUES (40, N'מעלות תרשיחא')
INSERT [dbo].[City] ([sn], [city]) VALUES (41, N'נהריה')
INSERT [dbo].[City] ([sn], [city]) VALUES (42, N'נס ציונה')
INSERT [dbo].[City] ([sn], [city]) VALUES (43, N'נצרת עילית')
INSERT [dbo].[City] ([sn], [city]) VALUES (44, N'נשר')
INSERT [dbo].[City] ([sn], [city]) VALUES (45, N'נתיבות')
INSERT [dbo].[City] ([sn], [city]) VALUES (46, N'נתניה')
INSERT [dbo].[City] ([sn], [city]) VALUES (47, N'עכו')
INSERT [dbo].[City] ([sn], [city]) VALUES (48, N'עפולה')
INSERT [dbo].[City] ([sn], [city]) VALUES (49, N'ערד')
INSERT [dbo].[City] ([sn], [city]) VALUES (50, N'פתח תקווה')
INSERT [dbo].[City] ([sn], [city]) VALUES (51, N'צפת')
INSERT [dbo].[City] ([sn], [city]) VALUES (52, N'קריית אונו')
INSERT [dbo].[City] ([sn], [city]) VALUES (53, N'קריית ארבע')
INSERT [dbo].[City] ([sn], [city]) VALUES (54, N'קריית אתא')
INSERT [dbo].[City] ([sn], [city]) VALUES (55, N'קריית ביאליק')
INSERT [dbo].[City] ([sn], [city]) VALUES (56, N'קריית גת')
INSERT [dbo].[City] ([sn], [city]) VALUES (57, N'קריית ים')
INSERT [dbo].[City] ([sn], [city]) VALUES (58, N'קריית מוצקין')
INSERT [dbo].[City] ([sn], [city]) VALUES (59, N'קריית מלאכי')
INSERT [dbo].[City] ([sn], [city]) VALUES (60, N'קריית שמונה')
INSERT [dbo].[City] ([sn], [city]) VALUES (61, N'קריית טבעון')
INSERT [dbo].[City] ([sn], [city]) VALUES (62, N'ראש העין')
INSERT [dbo].[City] ([sn], [city]) VALUES (63, N'ראש פינה')
INSERT [dbo].[City] ([sn], [city]) VALUES (64, N'ראשון לציון')
INSERT [dbo].[City] ([sn], [city]) VALUES (65, N'רחובות')
INSERT [dbo].[City] ([sn], [city]) VALUES (66, N'רמלה')
INSERT [dbo].[City] ([sn], [city]) VALUES (67, N'רמת גן')
INSERT [dbo].[City] ([sn], [city]) VALUES (68, N'רמת השרון')
INSERT [dbo].[City] ([sn], [city]) VALUES (69, N'רעננה')
INSERT [dbo].[City] ([sn], [city]) VALUES (70, N'שדרות')
INSERT [dbo].[City] ([sn], [city]) VALUES (71, N'תל אביב')
SET IDENTITY_INSERT [dbo].[City] OFF
INSERT [dbo].[Groups] ([sn], [group_name]) VALUES (1, N'מועמדים')
INSERT [dbo].[Groups] ([sn], [group_name]) VALUES (2, N'מלגאים')
INSERT [dbo].[Groups] ([sn], [group_name]) VALUES (3, N'מלגאים ומועמדים')
INSERT [dbo].[Groups] ([sn], [group_name]) VALUES (4, N'מלגאים חדשים בלבד')
INSERT [dbo].[Login_Permissions] ([id], [password], [userType]) VALUES (N'203936752', N'1234', 1)
SET IDENTITY_INSERT [dbo].[Scholarship] ON 

INSERT [dbo].[Scholarship] ([sn], [scholarshipName], [budgetScholarship], [admission], [status]) VALUES (1, N'קרן אלרוב ', 20000, N'ממוצע תואר מעל 80', N'Active')
INSERT [dbo].[Scholarship] ([sn], [scholarshipName], [budgetScholarship], [admission], [status]) VALUES (2, N'dsfs', 588, N'sdfds', N'Active')
INSERT [dbo].[Scholarship] ([sn], [scholarshipName], [budgetScholarship], [admission], [status]) VALUES (3, N'dsfs', 588, N'sdfds', N'Active')
INSERT [dbo].[Scholarship] ([sn], [scholarshipName], [budgetScholarship], [admission], [status]) VALUES (4, N'dsfs', 588, N'sdfds', N'Active')
INSERT [dbo].[Scholarship] ([sn], [scholarshipName], [budgetScholarship], [admission], [status]) VALUES (5, N'dsfs', 588, N'sdfds', N'Active')
INSERT [dbo].[Scholarship] ([sn], [scholarshipName], [budgetScholarship], [admission], [status]) VALUES (6, N'dsfs', 588, N'sdfds', N'Active')
SET IDENTITY_INSERT [dbo].[Scholarship] OFF
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([sn], [typeOfService], [longOfService]) VALUES (1, N'צבאי', N'מלא')
INSERT [dbo].[Service] ([sn], [typeOfService], [longOfService]) VALUES (2, N'צבאי', N'חלקי')
INSERT [dbo].[Service] ([sn], [typeOfService], [longOfService]) VALUES (3, N'לאומי', N'מלא')
INSERT [dbo].[Service] ([sn], [typeOfService], [longOfService]) VALUES (4, N'לאומי', N'חלקי')
INSERT [dbo].[Service] ([sn], [typeOfService], [longOfService]) VALUES (5, N'בלי שירות', N'אין')
SET IDENTITY_INSERT [dbo].[Service] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (1, N'מלגאי', N'חדש')
INSERT [dbo].[Status] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (2, N'מלגאי', N'ממשיך')
INSERT [dbo].[Status] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (3, N'מלגאי', N'בוגר')
INSERT [dbo].[Status] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (4, N'מלגאי', N'לשעבר')
INSERT [dbo].[Status] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (5, N'מועמד', N'פעיל')
INSERT [dbo].[Status] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (6, N'מועמד', N'לא פעיל בתהליך')
INSERT [dbo].[Status] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (7, N'מועמד', N'לא פעיל סיום טיפול')
SET IDENTITY_INSERT [dbo].[Status] OFF
SET IDENTITY_INSERT [dbo].[Study_Field] ON 

INSERT [dbo].[Study_Field] ([sn], [field], [nameOfDegree]) VALUES (1, N'computers', N'Computer Science')
INSERT [dbo].[Study_Field] ([sn], [field], [nameOfDegree]) VALUES (2, N'מחשבים', N'Computer Science')
SET IDENTITY_INSERT [dbo].[Study_Field] OFF
INSERT [dbo].[User_Profile] ([id], [firstName], [lastName], [dateOfBirth], [status], [yearsInTheProgram], [gender], [phone], [email], [cityNumber], [address], [numOfSiblings], [academicParents], [school], [yearFinishSchool], [typeOfService], [academicInstitution], [studyField], [startYear], [excpectedCompletionYear], [anotherScholarship], [educationFunding], [typeOfDegree], [comments], [roleInService], [easeOfService], [residenceWhileStudiyng], [service_description], [averageDegree]) VALUES (N'203936752', N'אלינור', N'עזרן', NULL, 5, 2, N'F', N'0506360155', N'elinoraz21@gmail.com', 1, NULL, 5, 0, N'רבין,כפר סבא', 2010, 1, NULL, 1, 2015, 2019, N'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User_Profile] ([id], [firstName], [lastName], [dateOfBirth], [status], [yearsInTheProgram], [gender], [phone], [email], [cityNumber], [address], [numOfSiblings], [academicParents], [school], [yearFinishSchool], [typeOfService], [academicInstitution], [studyField], [startYear], [excpectedCompletionYear], [anotherScholarship], [educationFunding], [typeOfDegree], [comments], [roleInService], [easeOfService], [residenceWhileStudiyng], [service_description], [averageDegree]) VALUES (N'307053214', N'Mor', N'Azran', NULL, 5, NULL, NULL, NULL, NULL, NULL, N'Ben Zvi 10', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([numOfType], [userType]) VALUES (1, N'מנהל')
INSERT [dbo].[UserType] ([numOfType], [userType]) VALUES (2, N'עוזר מנהל')
INSERT [dbo].[UserType] ([numOfType], [userType]) VALUES (3, N'משתמש')
SET IDENTITY_INSERT [dbo].[UserType] OFF
ALTER TABLE [dbo].[Scholarship] ADD  DEFAULT ('Active') FOR [status]
GO
ALTER TABLE [dbo].[Academic_Institut]  WITH CHECK ADD FOREIGN KEY([placeOfInstitute])
REFERENCES [dbo].[City] ([sn])
GO
ALTER TABLE [dbo].[Active_Candidate_Info]  WITH CHECK ADD FOREIGN KEY([idCandidate])
REFERENCES [dbo].[User_Profile] ([id])
GO
ALTER TABLE [dbo].[Active_Candidate_Info]  WITH CHECK ADD FOREIGN KEY([participation_heznek_highSchool])
REFERENCES [dbo].[Organization_Frames_HighSchool] ([sn])
GO
ALTER TABLE [dbo].[Contact_Candidate]  WITH CHECK ADD FOREIGN KEY([idCandidate])
REFERENCES [dbo].[User_Profile] ([id])
GO
ALTER TABLE [dbo].[Contact_Candidate]  WITH CHECK ADD FOREIGN KEY([idScholar])
REFERENCES [dbo].[User_Profile] ([id])
GO
ALTER TABLE [dbo].[Deposits_Scholarship]  WITH CHECK ADD FOREIGN KEY([idScholar])
REFERENCES [dbo].[User_Profile] ([id])
GO
ALTER TABLE [dbo].[Deposits_Scholarship]  WITH CHECK ADD FOREIGN KEY([scholarship_sn])
REFERENCES [dbo].[Scholarship] ([sn])
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK__event__typeOfPar__628FA481] FOREIGN KEY([typeOfParticipants])
REFERENCES [dbo].[Groups] ([sn])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK__event__typeOfPar__628FA481]
GO
ALTER TABLE [dbo].[File]  WITH CHECK ADD FOREIGN KEY([idOfTheUploader])
REFERENCES [dbo].[User_Profile] ([id])
GO
ALTER TABLE [dbo].[Login_Permissions]  WITH CHECK ADD FOREIGN KEY([userType])
REFERENCES [dbo].[UserType] ([numOfType])
GO
ALTER TABLE [dbo].[Login_Permissions]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[User_Profile] ([id])
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([idSender])
REFERENCES [dbo].[User_Profile] ([id])
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([send_to_group])
REFERENCES [dbo].[UserType] ([numOfType])
GO
ALTER TABLE [dbo].[Participant_Event]  WITH CHECK ADD  CONSTRAINT [FK_Participant_Event_Participant_Event] FOREIGN KEY([sn])
REFERENCES [dbo].[Event] ([sn])
GO
ALTER TABLE [dbo].[Participant_Event] CHECK CONSTRAINT [FK_Participant_Event_Participant_Event]
GO
ALTER TABLE [dbo].[Participant_Event]  WITH CHECK ADD  CONSTRAINT [FK_Participant_Event_User_Profile] FOREIGN KEY([id_participant])
REFERENCES [dbo].[User_Profile] ([id])
GO
ALTER TABLE [dbo].[Participant_Event] CHECK CONSTRAINT [FK_Participant_Event_User_Profile]
GO
ALTER TABLE [dbo].[Scholarship_Student_Bank]  WITH CHECK ADD FOREIGN KEY([bank_name])
REFERENCES [dbo].[Bank] ([sn])
GO
ALTER TABLE [dbo].[Scholarship_Student_Bank]  WITH CHECK ADD FOREIGN KEY([idScholar])
REFERENCES [dbo].[User_Profile] ([id])
GO
ALTER TABLE [dbo].[Student_Scholarship]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[User_Profile] ([id])
GO
ALTER TABLE [dbo].[Student_Scholarship]  WITH CHECK ADD FOREIGN KEY([sn])
REFERENCES [dbo].[Scholarship] ([sn])
GO
ALTER TABLE [dbo].[Student_Volunteer]  WITH CHECK ADD FOREIGN KEY([scholarshipSn])
REFERENCES [dbo].[Scholarship] ([sn])
GO
ALTER TABLE [dbo].[Student_Volunteer]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[User_Profile] ([id])
GO
ALTER TABLE [dbo].[User_Profile]  WITH CHECK ADD FOREIGN KEY([academicInstitution])
REFERENCES [dbo].[Academic_Institut] ([sn])
GO
ALTER TABLE [dbo].[User_Profile]  WITH CHECK ADD FOREIGN KEY([cityNumber])
REFERENCES [dbo].[City] ([sn])
GO
ALTER TABLE [dbo].[User_Profile]  WITH CHECK ADD FOREIGN KEY([status])
REFERENCES [dbo].[Status] ([numOfStatus])
GO
ALTER TABLE [dbo].[User_Profile]  WITH CHECK ADD FOREIGN KEY([studyField])
REFERENCES [dbo].[Study_Field] ([sn])
GO
ALTER TABLE [dbo].[User_Profile]  WITH CHECK ADD FOREIGN KEY([typeOfService])
REFERENCES [dbo].[Service] ([sn])
GO
ALTER TABLE [dbo].[Active_Candidate_Info]  WITH CHECK ADD CHECK  (([diagnosis_learning_disabilities]=(0) OR [diagnosis_learning_disabilities]=(1)))
GO
ALTER TABLE [dbo].[Active_Candidate_Info]  WITH CHECK ADD CHECK  (([disabilty_parents]=(0) OR [disabilty_parents]=(1) OR [disabilty_parents]=(2)))
GO
ALTER TABLE [dbo].[Active_Candidate_Info]  WITH CHECK ADD CHECK  (([family_issues]=(0) OR [family_issues]=(1)))
GO
ALTER TABLE [dbo].[Active_Candidate_Info]  WITH CHECK ADD CHECK  (([financial_difficulties]=(0) OR [financial_difficulties]=(1)))
GO
ALTER TABLE [dbo].[Active_Candidate_Info]  WITH CHECK ADD CHECK  (([health_problems]=(0) OR [health_problems]=(1)))
GO
ALTER TABLE [dbo].[Active_Candidate_Info]  WITH CHECK ADD CHECK  (([worthy_of_advancement]=(0) OR [worthy_of_advancement]=(1)))
GO
ALTER TABLE [dbo].[Login_Permissions]  WITH CHECK ADD CHECK  (([id] like replicate('[0-9]',(9))))
GO
ALTER TABLE [dbo].[Scholarship]  WITH CHECK ADD CHECK  (([status]='Not Active' OR [status]='Active'))
GO
ALTER TABLE [dbo].[Student_Volunteer]  WITH CHECK ADD CHECK  (([semester]='a' OR [semester]='b'))
GO
ALTER TABLE [dbo].[User_Profile]  WITH CHECK ADD  CONSTRAINT [check_typeDegree] CHECK  (([typeOfDegree]<(4)))
GO
ALTER TABLE [dbo].[User_Profile] CHECK CONSTRAINT [check_typeDegree]
GO
ALTER TABLE [dbo].[User_Profile]  WITH CHECK ADD CHECK  (([startYear]<=[excpectedCompletionYear]))
GO
ALTER TABLE [dbo].[User_Profile]  WITH CHECK ADD CHECK  (([academicParents]=(2) OR [academicParents]=(1) OR [academicParents]=(0)))
GO
ALTER TABLE [dbo].[User_Profile]  WITH CHECK ADD CHECK  (([anotherScholarship]='No' OR [anotherScholarship]='Yes'))
GO
ALTER TABLE [dbo].[User_Profile]  WITH CHECK ADD CHECK  (([email] like '%_@__%.__%'))
GO
ALTER TABLE [dbo].[User_Profile]  WITH CHECK ADD CHECK  (([gender]='F' OR [gender]='M'))
GO
ALTER TABLE [dbo].[User_Profile]  WITH CHECK ADD CHECK  (([id] like replicate('[0-9]',(9))))
GO
ALTER TABLE [dbo].[User_Profile]  WITH CHECK ADD CHECK  (([phone] like replicate('[0-9]',(10))))
GO
USE [master]
GO
ALTER DATABASE [HeznekDB] SET  READ_WRITE 
GO
