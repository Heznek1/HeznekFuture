USE [master]
GO
/****** Object:  Database [HeznekServiceDb]    Script Date: 12/11/2018 21:43:58 ******/
CREATE DATABASE [HeznekServiceDb]
 CONTAINMENT = NONE
GO
ALTER DATABASE [HeznekServiceDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HeznekServiceDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HeznekServiceDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HeznekServiceDb] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [HeznekServiceDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HeznekServiceDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HeznekServiceDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HeznekServiceDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HeznekServiceDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HeznekServiceDb] SET  MULTI_USER 
GO
ALTER DATABASE [HeznekServiceDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HeznekServiceDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HeznekServiceDb] SET FilesTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HeznekServiceDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HeznekServiceDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HeznekServiceDb] SET QUERY_STORE = OFF
GO
USE [HeznekServiceDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [HeznekServiceDb]
GO
/****** Object:  Table [dbo].[AcademicInstitution]    Script Date: 12/11/2018 21:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicInstitution](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nameOfInstitut] [nvarchar](500) NOT NULL,
	[placeOfInstitute] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 12/11/2018 21:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 12/11/2018 21:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[city] [nvarchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactStudents]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactStudents](
	[idStudent] [char](9) NOT NULL,
	[idCandidate] [char](9) NOT NULL,
	[dateOfCall] [date] NULL,
	[updating] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[idStudent] ASC,
	[idCandidate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nameEvent] [nvarchar](300) NOT NULL,
	[subjectEvent] [nvarchar](300) NULL,
	[eventDate] [date] NULL,
	[eventHour] [time](7) NULL,
	[eventLocation] [nvarchar](500) NULL,
	[typeOfParticipants] [nvarchar](100) NOT NULL,
	[numParticipantsExpected] [int] NULL,
	[numOfActualParticipants] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Files]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Files](
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
/****** Object:  Table [dbo].[loginAndPermissions]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loginAndPermissions](
	[id] [char](9) NOT NULL,
	[password] [varchar](10) NULL,
	[userType] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idSender] [char](9) NOT NULL,
	[idReciever] [char](9) NOT NULL,
	[subject] [nvarchar](max) NULL,
	[content] [nvarchar](max) NOT NULL,
	[hour] [time](7) NULL,
	[dateOfMessage] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[idSender] ASC,
	[idReciever] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventParticipants]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventParticipants](
	[id] [int] NOT NULL,
	[user_id] [char](9) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scolarship]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scolarship](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ScolarshipName] [nvarchar](200) NOT NULL,
	[budgetScolarship] [int] NULL,
	[admission] [nvarchar](4000) NULL,
	[status] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typeOfService] [nvarchar](200) NULL,
	[longOfService] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 12/11/2018 21:43:59 ******/
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
/****** Object:  Table [dbo].[StudentScolarship]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentScolarship](
	[user_id] [char](9) NOT NULL,
	[id] [int] NOT NULL,
	[amountOfGivanScolarship] [int] NULL,
	[numOfDeposits] [int] NULL,
	[currentYear] [int] NULL,
	[wasGivenInPast] [char](1) NOT NULL,
	[numOfVolunteerHours] [int] NULL,
	[numOfHoursDone] [int] NULL,
	[wayOfVolunteer] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentVolunteer]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentVolunteer](
	[id] [char](9) NOT NULL,
	[ScolarshipSn] [int] NOT NULL,
	[dateOfVolunteer] [date] NOT NULL,
	[startHour] [datetime] NOT NULL,
	[finishHour] [datetime] NOT NULL,
	[semester] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[ScolarshipSn] ASC,
	[dateOfVolunteer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldOfStudy]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldOfStudy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[field] [nvarchar](4000) NULL,
	[nameOfDegree] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
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
	[learningDisabilities] [varchar](3) NULL,
	[psychometricGrade] [int] NULL,
	[anotherScolarship] [varchar](3) NULL,
	[educationFunding] [nvarchar](4000) NULL,
	[difficulties] [nvarchar](4000) NULL,
	[BankName] [int] NULL,
	[numOfBank] [int] NULL,
	[numAccount] [int] NULL,
	[avergeDegree] [int] NULL,
	[typeOfDegree] [int] NULL,
	[comments] [nvarchar](max) NULL,
	[averageSalaryFather] [int] NULL,
	[averageSalaryMother] [int] NULL,
	[roleInService] [nvarchar](max) NULL,
	[easeOfService] [int] NULL,
	[parentsDisability] [int] NULL,
	[yearsInProgram] [int] NULL,
	[residenceWhileStudiyng] [int] NULL,
	[graduateJob] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 12/11/2018 21:43:59 ******/
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
SET IDENTITY_INSERT [dbo].[Bank] ON 

INSERT [dbo].[Bank] ([id], [name]) VALUES (1, N'בנק אגוד לישראל בע"מ​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (2, N'בנק אוצר החייל בע"מ​​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (3, N'בנק דיסקונט לישראל בע"מ​​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (4, N'בנק דקסיה ישראל בע"מ​​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (5, N'בנק הפועלים בע"מ​​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (6, N'בנק יהב לעובדי המדינה בע"מ​​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (7, N'בנק ירושלים בע"מ​​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (8, N'בנק לאומי לישראל בע"מ​​​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (9, N'בנק מזרחי טפחות בע"מ​​​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (10, N'בנק מסד בע"מ​​​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (11, N'בנק מרכנתיל דיסקונט בע"מ​​​​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (12, N'בנק ערבי ישראלי בע"מ​​​​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (13, N'בנק ערבי ישראלי בע"מ​​​​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (14, N'בנק פועלי אגודת ישראל בע"מ​​​​​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (15, N'הבנק הבינלאומי הראשון לישראל בע"מ​​​​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (16, N'יובנק בע"מ​​​​​')
INSERT [dbo].[Bank] ([id], [name]) VALUES (17, N'בלה בלה')
INSERT [dbo].[Bank] ([id], [name]) VALUES (18, N'הבנק של אלינור')
SET IDENTITY_INSERT [dbo].[Bank] OFF
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([id], [city]) VALUES (1, N'אופקים')
INSERT [dbo].[City] ([id], [city]) VALUES (2, N'אור יהודה')
INSERT [dbo].[City] ([id], [city]) VALUES (4, N'אור עקיבא')
INSERT [dbo].[City] ([id], [city]) VALUES (5, N'אילת')
INSERT [dbo].[City] ([id], [city]) VALUES (6, N'אלעד')
INSERT [dbo].[City] ([id], [city]) VALUES (7, N'אריאל')
INSERT [dbo].[City] ([id], [city]) VALUES (8, N'אשדוד')
INSERT [dbo].[City] ([id], [city]) VALUES (9, N'אשקלון')
INSERT [dbo].[City] ([id], [city]) VALUES (10, N'באר שבע')
INSERT [dbo].[City] ([id], [city]) VALUES (11, N'בית שאן')
INSERT [dbo].[City] ([id], [city]) VALUES (12, N'בית שמש')
INSERT [dbo].[City] ([id], [city]) VALUES (13, N'ביתר עילית')
INSERT [dbo].[City] ([id], [city]) VALUES (14, N'בני ברק')
INSERT [dbo].[City] ([id], [city]) VALUES (15, N'בת ים')
INSERT [dbo].[City] ([id], [city]) VALUES (16, N'גבעת שמואל')
INSERT [dbo].[City] ([id], [city]) VALUES (17, N'גבעתיים')
INSERT [dbo].[City] ([id], [city]) VALUES (18, N'דימונה')
INSERT [dbo].[City] ([id], [city]) VALUES (19, N'הוד השרון')
INSERT [dbo].[City] ([id], [city]) VALUES (20, N'הרצליה')
INSERT [dbo].[City] ([id], [city]) VALUES (21, N'זכרון יעקב')
INSERT [dbo].[City] ([id], [city]) VALUES (22, N'חדרה')
INSERT [dbo].[City] ([id], [city]) VALUES (23, N'חולון')
INSERT [dbo].[City] ([id], [city]) VALUES (24, N'חיפה')
INSERT [dbo].[City] ([id], [city]) VALUES (25, N'טבריה')
INSERT [dbo].[City] ([id], [city]) VALUES (26, N'טירת כרמל')
INSERT [dbo].[City] ([id], [city]) VALUES (27, N'יבנה')
INSERT [dbo].[City] ([id], [city]) VALUES (28, N'יהוד')
INSERT [dbo].[City] ([id], [city]) VALUES (29, N'יפו')
INSERT [dbo].[City] ([id], [city]) VALUES (30, N'יקנעם')
INSERT [dbo].[City] ([id], [city]) VALUES (31, N'ירושלים')
INSERT [dbo].[City] ([id], [city]) VALUES (32, N'כפר סבא')
INSERT [dbo].[City] ([id], [city]) VALUES (33, N'כרמיאל')
INSERT [dbo].[City] ([id], [city]) VALUES (34, N'לוד')
INSERT [dbo].[City] ([id], [city]) VALUES (35, N'מגדל העמק')
INSERT [dbo].[City] ([id], [city]) VALUES (36, N'מודיעין מכבים רעות')
INSERT [dbo].[City] ([id], [city]) VALUES (37, N'מודיעין עילית')
INSERT [dbo].[City] ([id], [city]) VALUES (38, N'מטולה')
INSERT [dbo].[City] ([id], [city]) VALUES (39, N'מעלה אדומים')
INSERT [dbo].[City] ([id], [city]) VALUES (40, N'מעלות תרשיחא')
INSERT [dbo].[City] ([id], [city]) VALUES (41, N'נהריה')
INSERT [dbo].[City] ([id], [city]) VALUES (42, N'נס ציונה')
INSERT [dbo].[City] ([id], [city]) VALUES (43, N'נצרת עילית')
INSERT [dbo].[City] ([id], [city]) VALUES (44, N'נשר')
INSERT [dbo].[City] ([id], [city]) VALUES (45, N'נתיבות')
INSERT [dbo].[City] ([id], [city]) VALUES (46, N'נתניה')
INSERT [dbo].[City] ([id], [city]) VALUES (47, N'עכו')
INSERT [dbo].[City] ([id], [city]) VALUES (48, N'עפולה')
INSERT [dbo].[City] ([id], [city]) VALUES (49, N'ערד')
INSERT [dbo].[City] ([id], [city]) VALUES (50, N'פתח תקווה')
INSERT [dbo].[City] ([id], [city]) VALUES (51, N'צפת')
INSERT [dbo].[City] ([id], [city]) VALUES (52, N'קריית אונו')
INSERT [dbo].[City] ([id], [city]) VALUES (53, N'קריית ארבע')
INSERT [dbo].[City] ([id], [city]) VALUES (54, N'קריית אתא')
INSERT [dbo].[City] ([id], [city]) VALUES (55, N'קריית ביאליק')
INSERT [dbo].[City] ([id], [city]) VALUES (56, N'קריית גת')
INSERT [dbo].[City] ([id], [city]) VALUES (57, N'קריית ים')
INSERT [dbo].[City] ([id], [city]) VALUES (58, N'קריית מוצקין')
INSERT [dbo].[City] ([id], [city]) VALUES (59, N'קריית מלאכי')
INSERT [dbo].[City] ([id], [city]) VALUES (60, N'קריית שמונה')
INSERT [dbo].[City] ([id], [city]) VALUES (61, N'קריית טבעון')
INSERT [dbo].[City] ([id], [city]) VALUES (62, N'ראש העין')
INSERT [dbo].[City] ([id], [city]) VALUES (63, N'ראש פינה')
INSERT [dbo].[City] ([id], [city]) VALUES (64, N'ראשון לציון')
INSERT [dbo].[City] ([id], [city]) VALUES (65, N'רחובות')
INSERT [dbo].[City] ([id], [city]) VALUES (66, N'רמלה')
INSERT [dbo].[City] ([id], [city]) VALUES (67, N'רמת גן')
INSERT [dbo].[City] ([id], [city]) VALUES (68, N'רמת השרון')
INSERT [dbo].[City] ([id], [city]) VALUES (69, N'רעננה')
INSERT [dbo].[City] ([id], [city]) VALUES (70, N'שדרות')
INSERT [dbo].[City] ([id], [city]) VALUES (71, N'תל אביב')
SET IDENTITY_INSERT [dbo].[City] OFF
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([id], [nameEvent], [subjectEvent], [eventDate], [eventHour], [eventLocation], [typeOfParticipants], [numParticipantsExpected], [numOfActualParticipants]) VALUES (1, N'סדנה', N'סדנה לחיזוק העצמי', CAST(N'2018-07-10' AS Date), CAST(N'12:00:00' AS Time), N'תל אביב רחוב הארבעה 7', N'students', 50, NULL)
SET IDENTITY_INSERT [dbo].[Events] OFF
INSERT [dbo].[loginAndPermissions] ([id], [password], [userType]) VALUES (N'203936752', N'1234', 1)
SET IDENTITY_INSERT [dbo].[Scolarship] ON 

INSERT [dbo].[Scolarship] ([id], [ScolarshipName], [budgetScolarship], [admission], [status]) VALUES (1, N'קרן אלרוב ', 20000, N'ממוצע תואר מעל 80', N'Active')
INSERT [dbo].[Scolarship] ([id], [ScolarshipName], [budgetScolarship], [admission], [status]) VALUES (2, N'dsfs', 588, N'sdfds', N'Active')
INSERT [dbo].[Scolarship] ([id], [ScolarshipName], [budgetScolarship], [admission], [status]) VALUES (3, N'dsfs', 588, N'sdfds', N'Active')
INSERT [dbo].[Scolarship] ([id], [ScolarshipName], [budgetScolarship], [admission], [status]) VALUES (4, N'dsfs', 588, N'sdfds', N'Active')
INSERT [dbo].[Scolarship] ([id], [ScolarshipName], [budgetScolarship], [admission], [status]) VALUES (5, N'dsfs', 588, N'sdfds', N'Active')
INSERT [dbo].[Scolarship] ([id], [ScolarshipName], [budgetScolarship], [admission], [status]) VALUES (6, N'dsfs', 588, N'sdfds', N'Active')
SET IDENTITY_INSERT [dbo].[Scolarship] OFF
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([id], [typeOfService], [longOfService]) VALUES (1, N'צבאי', N'מלא')
INSERT [dbo].[Service] ([id], [typeOfService], [longOfService]) VALUES (2, N'צבאי', N'חלקי')
INSERT [dbo].[Service] ([id], [typeOfService], [longOfService]) VALUES (3, N'לאומי', N'מלא')
INSERT [dbo].[Service] ([id], [typeOfService], [longOfService]) VALUES (4, N'לאומי', N'חלקי')
INSERT [dbo].[Service] ([id], [typeOfService], [longOfService]) VALUES (5, N'בלי שירות', N'אין')
SET IDENTITY_INSERT [dbo].[Service] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (1, N'סטודנט', N'מלגאי חדש')
INSERT [dbo].[Status] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (2, N'סטודנט', N'מלגאי ממשיך')
INSERT [dbo].[Status] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (3, N'סטודנט', N'מלגאי לשעבר')
INSERT [dbo].[Status] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (4, N'מועמד', N'מודע')
INSERT [dbo].[Status] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (5, N'מועמד', N'לא מודע ')
INSERT [dbo].[Status] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (6, N'בוגר', NULL)
SET IDENTITY_INSERT [dbo].[Status] OFF
SET IDENTITY_INSERT [dbo].[FieldOfStudy] ON 

INSERT [dbo].[FieldOfStudy] ([id], [field], [nameOfDegree]) VALUES (1, N'computers', N'Computer Science')
INSERT [dbo].[FieldOfStudy] ([id], [field], [nameOfDegree]) VALUES (2, N'מחשבים', N'Computer Science')
SET IDENTITY_INSERT [dbo].[FieldOfStudy] OFF
INSERT [dbo].[UserProfile] ([id], [firstName], [lastName], [dateOfBirth], [status], [yearsInTheProgram], [gender], [phone], [email], [cityNumber], [address], [numOfSiblings], [academicParents], [school], [yearFinishSchool], [typeOfService], [academicInstitution], [studyField], [startYear], [excpectedCompletionYear], [learningDisabilities], [psychometricGrade], [anotherScolarship], [educationFunding], [difficulties], [BankName], [numOfBank], [numAccount], [avergeDegree], [typeOfDegree], [comments], [averageSalaryFather], [averageSalaryMother], [roleInService], [easeOfService], [parentsDisability], [yearsInProgram], [residenceWhileStudiyng], [graduateJob]) VALUES (N'203936752', N'אלינור', N'עזרן', NULL, 2, 2, N'F', N'0506360155', N'elinoraz21@gmail.com', 1, NULL, 5, 0, N'רבין,כפר סבא', 2010, 1, NULL, 1, 2015, 2019, N'No', 685, N'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([numOfType], [userType]) VALUES (1, N'מנהל')
INSERT [dbo].[UserType] ([numOfType], [userType]) VALUES (2, N'עוזר מנהל')
INSERT [dbo].[UserType] ([numOfType], [userType]) VALUES (3, N'משתמש')
SET IDENTITY_INSERT [dbo].[UserType] OFF
ALTER TABLE [dbo].[Events] ADD  DEFAULT ('students') FOR [typeOfParticipants]
GO
ALTER TABLE [dbo].[Scolarship] ADD  DEFAULT ('Active') FOR [status]
GO
ALTER TABLE [dbo].[AcademicInstitution]  WITH CHECK ADD FOREIGN KEY([placeOfInstitute])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[ContactStudents]  WITH CHECK ADD FOREIGN KEY([idCandidate])
REFERENCES [dbo].[UserProfile] ([id])
GO
ALTER TABLE [dbo].[ContactStudents]  WITH CHECK ADD FOREIGN KEY([idStudent])
REFERENCES [dbo].[UserProfile] ([id])
GO
ALTER TABLE [dbo].[Files]  WITH CHECK ADD FOREIGN KEY([idOfTheUploader])
REFERENCES [dbo].[UserProfile] ([id])
GO
ALTER TABLE [dbo].[loginAndPermissions]  WITH CHECK ADD FOREIGN KEY([userType])
REFERENCES [dbo].[UserType] ([numOfType])
GO
ALTER TABLE [dbo].[loginAndPermissions]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[UserProfile] ([id])
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD FOREIGN KEY([idReciever])
REFERENCES [dbo].[UserProfile] ([id])
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD FOREIGN KEY([idSender])
REFERENCES [dbo].[UserProfile] ([id])
GO
ALTER TABLE [dbo].[EventParticipants]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[UserProfile] ([id])
GO
ALTER TABLE [dbo].[EventParticipants]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[Events] ([id])
GO
ALTER TABLE [dbo].[StudentScolarship]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[UserProfile] ([id])
GO
ALTER TABLE [dbo].[StudentScolarship]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[Scolarship] ([id])
GO
ALTER TABLE [dbo].[StudentVolunteer]  WITH CHECK ADD FOREIGN KEY([ScolarshipSn])
REFERENCES [dbo].[Scolarship] ([id])
GO
ALTER TABLE [dbo].[StudentVolunteer]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[UserProfile] ([id])
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD FOREIGN KEY([academicInstitution])
REFERENCES [dbo].[AcademicInstitution] ([id])
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD FOREIGN KEY([BankName])
REFERENCES [dbo].[Bank] ([id])
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD FOREIGN KEY([cityNumber])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD FOREIGN KEY([status])
REFERENCES [dbo].[Status] ([numOfStatus])
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD FOREIGN KEY([studyField])
REFERENCES [dbo].[FieldOfStudy] ([id])
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD FOREIGN KEY([typeOfService])
REFERENCES [dbo].[Service] ([id])
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD CHECK  (([typeOfParticipants]='everyone' OR [typeOfParticipants]='graduates' OR [typeOfParticipants]='candidates' OR [typeOfParticipants]='students'))
GO
ALTER TABLE [dbo].[loginAndPermissions]  WITH CHECK ADD CHECK  (([id] like replicate('[0-9]',(9))))
GO
ALTER TABLE [dbo].[Scolarship]  WITH CHECK ADD CHECK  (([status]='Not Active' OR [status]='Active'))
GO
ALTER TABLE [dbo].[StudentVolunteer]  WITH CHECK ADD CHECK  (([semester]='a' OR [semester]='b'))
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [check_Bank1_nullness] CHECK  (([BankName] IS NULL AND [numOfBank] IS NULL OR [BankName] IS NOT NULL AND [numOfBank] IS NOT NULL))
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [check_Bank1_nullness]
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [check_Bank2_nullness] CHECK  (([numOfBank] IS NULL AND [numAccount] IS NULL OR [numOfBank] IS NOT NULL AND [numAccount] IS NOT NULL))
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [check_Bank2_nullness]
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [check_typeDegree] CHECK  (([typeOfDegree]<(4)))
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [check_typeDegree]
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD CHECK  (([startYear]<=[excpectedCompletionYear]))
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD CHECK  (([academicParents]=(2) OR [academicParents]=(1) OR [academicParents]=(0)))
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD CHECK  (([anotherScolarship]='No' OR [anotherScolarship]='Yes'))
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD CHECK  (([email] like '%_@__%.__%'))
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD CHECK  (([gender]='F' OR [gender]='M'))
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD CHECK  (([id] like replicate('[0-9]',(9))))
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD CHECK  (([learningDisabilities]='No' OR [learningDisabilities]='Yes'))
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD CHECK  (([phone] like replicate('[0-9]',(10))))
GO
USE [master]
GO
ALTER DATABASE [HeznekServiceDb] SET  READ_WRITE 
GO
