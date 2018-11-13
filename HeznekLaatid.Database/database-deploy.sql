USE [master]
GO
/****** Object:  Database [HeznekDb]    Script Date: 12/11/2018 21:43:58 ******/
CREATE DATABASE [HeznekDb]
 CONTAINMENT = NONE
GO
ALTER DATABASE [HeznekDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HeznekDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HeznekDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HeznekDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HeznekDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HeznekDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HeznekDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [HeznekDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HeznekDb] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [HeznekDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HeznekDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HeznekDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HeznekDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HeznekDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HeznekDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HeznekDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HeznekDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HeznekDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HeznekDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HeznekDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HeznekDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HeznekDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HeznekDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HeznekDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HeznekDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HeznekDb] SET  MULTI_USER 
GO
ALTER DATABASE [HeznekDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HeznekDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HeznekDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HeznekDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HeznekDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HeznekDb] SET QUERY_STORE = OFF
GO
USE [HeznekDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [HeznekDb]
GO
/****** Object:  Table [dbo].[academicInstitutTbl]    Script Date: 12/11/2018 21:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[academicInstitutTbl](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[nameOfInstitut] [nvarchar](500) NOT NULL,
	[placeOfInstitute] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bank]    Script Date: 12/11/2018 21:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bank](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cityTbl]    Script Date: 12/11/2018 21:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cityTbl](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[city] [nvarchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contactStudentCandidate]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contactStudentCandidate](
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
/****** Object:  Table [dbo].[eventTbl]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eventTbl](
	[sn] [int] IDENTITY(1,1) NOT NULL,
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
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[files]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[files](
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
/****** Object:  Table [dbo].[messages]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[messages](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[idSender] [char](9) NOT NULL,
	[idReciever] [char](9) NOT NULL,
	[subject] [nvarchar](max) NULL,
	[content] [nvarchar](max) NOT NULL,
	[hour] [time](7) NULL,
	[dateOfMessage] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[sn] ASC,
	[idSender] ASC,
	[idReciever] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[participantInEvent]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[participantInEvent](
	[sn] [int] NOT NULL,
	[id] [char](9) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sn] ASC,
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scholarship]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scholarship](
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
/****** Object:  Table [dbo].[serviceTbl]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[serviceTbl](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[typeOfService] [nvarchar](200) NULL,
	[longOfService] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statusTbl]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statusTbl](
	[numOfStatus] [int] IDENTITY(1,1) NOT NULL,
	[primaryStatusName] [nvarchar](100) NOT NULL,
	[secondaryStatusName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[numOfStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studentScholarship]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studentScholarship](
	[id] [char](9) NOT NULL,
	[sn] [int] NOT NULL,
	[amountOfGivanScholarship] [int] NULL,
	[numOfDeposits] [int] NULL,
	[currentYear] [int] NULL,
	[wasGivenInPast] [char](1) NOT NULL,
	[numOfVolunteerHours] [int] NULL,
	[numOfHoursDone] [int] NULL,
	[wayOfVolunteer] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studentVolunteer]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studentVolunteer](
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
/****** Object:  Table [dbo].[studyFieldTbl]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studyFieldTbl](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[field] [nvarchar](4000) NULL,
	[nameOfDegree] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userTbl]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userTbl](
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
	[anotherScholarship] [varchar](3) NULL,
	[educationFunding] [nvarchar](4000) NULL,
	[difficulties] [nvarchar](4000) NULL,
	[bankName] [int] NULL,
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
/****** Object:  Table [dbo].[userTypeTbl]    Script Date: 12/11/2018 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userTypeTbl](
	[numOfType] [int] IDENTITY(1,1) NOT NULL,
	[userType] [nvarchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[numOfType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bank] ON 

INSERT [dbo].[bank] ([sn], [name]) VALUES (1, N'בנק אגוד לישראל בע"מ​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (2, N'בנק אוצר החייל בע"מ​​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (3, N'בנק דיסקונט לישראל בע"מ​​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (4, N'בנק דקסיה ישראל בע"מ​​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (5, N'בנק הפועלים בע"מ​​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (6, N'בנק יהב לעובדי המדינה בע"מ​​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (7, N'בנק ירושלים בע"מ​​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (8, N'בנק לאומי לישראל בע"מ​​​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (9, N'בנק מזרחי טפחות בע"מ​​​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (10, N'בנק מסד בע"מ​​​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (11, N'בנק מרכנתיל דיסקונט בע"מ​​​​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (12, N'בנק ערבי ישראלי בע"מ​​​​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (13, N'בנק ערבי ישראלי בע"מ​​​​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (14, N'בנק פועלי אגודת ישראל בע"מ​​​​​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (15, N'הבנק הבינלאומי הראשון לישראל בע"מ​​​​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (16, N'יובנק בע"מ​​​​​')
INSERT [dbo].[bank] ([sn], [name]) VALUES (17, N'בלה בלה')
INSERT [dbo].[bank] ([sn], [name]) VALUES (18, N'הבנק של אלינור')
SET IDENTITY_INSERT [dbo].[bank] OFF
SET IDENTITY_INSERT [dbo].[cityTbl] ON 

INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (1, N'אופקים')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (2, N'אור יהודה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (4, N'אור עקיבא')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (5, N'אילת')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (6, N'אלעד')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (7, N'אריאל')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (8, N'אשדוד')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (9, N'אשקלון')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (10, N'באר שבע')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (11, N'בית שאן')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (12, N'בית שמש')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (13, N'ביתר עילית')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (14, N'בני ברק')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (15, N'בת ים')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (16, N'גבעת שמואל')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (17, N'גבעתיים')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (18, N'דימונה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (19, N'הוד השרון')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (20, N'הרצליה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (21, N'זכרון יעקב')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (22, N'חדרה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (23, N'חולון')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (24, N'חיפה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (25, N'טבריה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (26, N'טירת כרמל')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (27, N'יבנה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (28, N'יהוד')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (29, N'יפו')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (30, N'יקנעם')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (31, N'ירושלים')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (32, N'כפר סבא')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (33, N'כרמיאל')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (34, N'לוד')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (35, N'מגדל העמק')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (36, N'מודיעין מכבים רעות')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (37, N'מודיעין עילית')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (38, N'מטולה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (39, N'מעלה אדומים')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (40, N'מעלות תרשיחא')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (41, N'נהריה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (42, N'נס ציונה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (43, N'נצרת עילית')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (44, N'נשר')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (45, N'נתיבות')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (46, N'נתניה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (47, N'עכו')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (48, N'עפולה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (49, N'ערד')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (50, N'פתח תקווה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (51, N'צפת')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (52, N'קריית אונו')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (53, N'קריית ארבע')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (54, N'קריית אתא')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (55, N'קריית ביאליק')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (56, N'קריית גת')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (57, N'קריית ים')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (58, N'קריית מוצקין')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (59, N'קריית מלאכי')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (60, N'קריית שמונה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (61, N'קריית טבעון')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (62, N'ראש העין')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (63, N'ראש פינה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (64, N'ראשון לציון')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (65, N'רחובות')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (66, N'רמלה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (67, N'רמת גן')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (68, N'רמת השרון')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (69, N'רעננה')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (70, N'שדרות')
INSERT [dbo].[cityTbl] ([sn], [city]) VALUES (71, N'תל אביב')
SET IDENTITY_INSERT [dbo].[cityTbl] OFF
SET IDENTITY_INSERT [dbo].[eventTbl] ON 

INSERT [dbo].[eventTbl] ([sn], [nameEvent], [subjectEvent], [eventDate], [eventHour], [eventLocation], [typeOfParticipants], [numParticipantsExpected], [numOfActualParticipants]) VALUES (1, N'סדנה', N'סדנה לחיזוק העצמי', CAST(N'2018-07-10' AS Date), CAST(N'12:00:00' AS Time), N'תל אביב רחוב הארבעה 7', N'students', 50, NULL)
SET IDENTITY_INSERT [dbo].[eventTbl] OFF
INSERT [dbo].[loginAndPermissions] ([id], [password], [userType]) VALUES (N'203936752', N'1234', 1)
SET IDENTITY_INSERT [dbo].[scholarship] ON 

INSERT [dbo].[scholarship] ([sn], [scholarshipName], [budgetScholarship], [admission], [status]) VALUES (1, N'קרן אלרוב ', 20000, N'ממוצע תואר מעל 80', N'Active')
INSERT [dbo].[scholarship] ([sn], [scholarshipName], [budgetScholarship], [admission], [status]) VALUES (2, N'dsfs', 588, N'sdfds', N'Active')
INSERT [dbo].[scholarship] ([sn], [scholarshipName], [budgetScholarship], [admission], [status]) VALUES (3, N'dsfs', 588, N'sdfds', N'Active')
INSERT [dbo].[scholarship] ([sn], [scholarshipName], [budgetScholarship], [admission], [status]) VALUES (4, N'dsfs', 588, N'sdfds', N'Active')
INSERT [dbo].[scholarship] ([sn], [scholarshipName], [budgetScholarship], [admission], [status]) VALUES (5, N'dsfs', 588, N'sdfds', N'Active')
INSERT [dbo].[scholarship] ([sn], [scholarshipName], [budgetScholarship], [admission], [status]) VALUES (6, N'dsfs', 588, N'sdfds', N'Active')
SET IDENTITY_INSERT [dbo].[scholarship] OFF
SET IDENTITY_INSERT [dbo].[serviceTbl] ON 

INSERT [dbo].[serviceTbl] ([sn], [typeOfService], [longOfService]) VALUES (1, N'צבאי', N'מלא')
INSERT [dbo].[serviceTbl] ([sn], [typeOfService], [longOfService]) VALUES (2, N'צבאי', N'חלקי')
INSERT [dbo].[serviceTbl] ([sn], [typeOfService], [longOfService]) VALUES (3, N'לאומי', N'מלא')
INSERT [dbo].[serviceTbl] ([sn], [typeOfService], [longOfService]) VALUES (4, N'לאומי', N'חלקי')
INSERT [dbo].[serviceTbl] ([sn], [typeOfService], [longOfService]) VALUES (5, N'בלי שירות', N'אין')
SET IDENTITY_INSERT [dbo].[serviceTbl] OFF
SET IDENTITY_INSERT [dbo].[statusTbl] ON 

INSERT [dbo].[statusTbl] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (1, N'סטודנט', N'מלגאי חדש')
INSERT [dbo].[statusTbl] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (2, N'סטודנט', N'מלגאי ממשיך')
INSERT [dbo].[statusTbl] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (3, N'סטודנט', N'מלגאי לשעבר')
INSERT [dbo].[statusTbl] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (4, N'מועמד', N'מודע')
INSERT [dbo].[statusTbl] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (5, N'מועמד', N'לא מודע ')
INSERT [dbo].[statusTbl] ([numOfStatus], [primaryStatusName], [secondaryStatusName]) VALUES (6, N'בוגר', NULL)
SET IDENTITY_INSERT [dbo].[statusTbl] OFF
SET IDENTITY_INSERT [dbo].[studyFieldTbl] ON 

INSERT [dbo].[studyFieldTbl] ([sn], [field], [nameOfDegree]) VALUES (1, N'computers', N'Computer Science')
INSERT [dbo].[studyFieldTbl] ([sn], [field], [nameOfDegree]) VALUES (2, N'מחשבים', N'Computer Science')
SET IDENTITY_INSERT [dbo].[studyFieldTbl] OFF
INSERT [dbo].[userTbl] ([id], [firstName], [lastName], [dateOfBirth], [status], [yearsInTheProgram], [gender], [phone], [email], [cityNumber], [address], [numOfSiblings], [academicParents], [school], [yearFinishSchool], [typeOfService], [academicInstitution], [studyField], [startYear], [excpectedCompletionYear], [learningDisabilities], [psychometricGrade], [anotherScholarship], [educationFunding], [difficulties], [bankName], [numOfBank], [numAccount], [avergeDegree], [typeOfDegree], [comments], [averageSalaryFather], [averageSalaryMother], [roleInService], [easeOfService], [parentsDisability], [yearsInProgram], [residenceWhileStudiyng], [graduateJob]) VALUES (N'203936752', N'אלינור', N'עזרן', NULL, 2, 2, N'F', N'0506360155', N'elinoraz21@gmail.com', 1, NULL, 5, 0, N'רבין,כפר סבא', 2010, 1, NULL, 1, 2015, 2019, N'No', 685, N'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[userTypeTbl] ON 

INSERT [dbo].[userTypeTbl] ([numOfType], [userType]) VALUES (1, N'מנהל')
INSERT [dbo].[userTypeTbl] ([numOfType], [userType]) VALUES (2, N'עוזר מנהל')
INSERT [dbo].[userTypeTbl] ([numOfType], [userType]) VALUES (3, N'משתמש')
SET IDENTITY_INSERT [dbo].[userTypeTbl] OFF
ALTER TABLE [dbo].[eventTbl] ADD  DEFAULT ('students') FOR [typeOfParticipants]
GO
ALTER TABLE [dbo].[scholarship] ADD  DEFAULT ('Active') FOR [status]
GO
ALTER TABLE [dbo].[academicInstitutTbl]  WITH CHECK ADD FOREIGN KEY([placeOfInstitute])
REFERENCES [dbo].[cityTbl] ([sn])
GO
ALTER TABLE [dbo].[contactStudentCandidate]  WITH CHECK ADD FOREIGN KEY([idCandidate])
REFERENCES [dbo].[userTbl] ([id])
GO
ALTER TABLE [dbo].[contactStudentCandidate]  WITH CHECK ADD FOREIGN KEY([idStudent])
REFERENCES [dbo].[userTbl] ([id])
GO
ALTER TABLE [dbo].[files]  WITH CHECK ADD FOREIGN KEY([idOfTheUploader])
REFERENCES [dbo].[userTbl] ([id])
GO
ALTER TABLE [dbo].[loginAndPermissions]  WITH CHECK ADD FOREIGN KEY([userType])
REFERENCES [dbo].[userTypeTbl] ([numOfType])
GO
ALTER TABLE [dbo].[loginAndPermissions]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[userTbl] ([id])
GO
ALTER TABLE [dbo].[messages]  WITH CHECK ADD FOREIGN KEY([idReciever])
REFERENCES [dbo].[userTbl] ([id])
GO
ALTER TABLE [dbo].[messages]  WITH CHECK ADD FOREIGN KEY([idSender])
REFERENCES [dbo].[userTbl] ([id])
GO
ALTER TABLE [dbo].[participantInEvent]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[userTbl] ([id])
GO
ALTER TABLE [dbo].[participantInEvent]  WITH CHECK ADD FOREIGN KEY([sn])
REFERENCES [dbo].[eventTbl] ([sn])
GO
ALTER TABLE [dbo].[studentScholarship]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[userTbl] ([id])
GO
ALTER TABLE [dbo].[studentScholarship]  WITH CHECK ADD FOREIGN KEY([sn])
REFERENCES [dbo].[scholarship] ([sn])
GO
ALTER TABLE [dbo].[studentVolunteer]  WITH CHECK ADD FOREIGN KEY([scholarshipSn])
REFERENCES [dbo].[scholarship] ([sn])
GO
ALTER TABLE [dbo].[studentVolunteer]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[userTbl] ([id])
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD FOREIGN KEY([academicInstitution])
REFERENCES [dbo].[academicInstitutTbl] ([sn])
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD FOREIGN KEY([bankName])
REFERENCES [dbo].[bank] ([sn])
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD FOREIGN KEY([cityNumber])
REFERENCES [dbo].[cityTbl] ([sn])
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD FOREIGN KEY([status])
REFERENCES [dbo].[statusTbl] ([numOfStatus])
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD FOREIGN KEY([studyField])
REFERENCES [dbo].[studyFieldTbl] ([sn])
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD FOREIGN KEY([typeOfService])
REFERENCES [dbo].[serviceTbl] ([sn])
GO
ALTER TABLE [dbo].[eventTbl]  WITH CHECK ADD CHECK  (([typeOfParticipants]='everyone' OR [typeOfParticipants]='graduates' OR [typeOfParticipants]='candidates' OR [typeOfParticipants]='students'))
GO
ALTER TABLE [dbo].[loginAndPermissions]  WITH CHECK ADD CHECK  (([id] like replicate('[0-9]',(9))))
GO
ALTER TABLE [dbo].[scholarship]  WITH CHECK ADD CHECK  (([status]='Not Active' OR [status]='Active'))
GO
ALTER TABLE [dbo].[studentVolunteer]  WITH CHECK ADD CHECK  (([semester]='a' OR [semester]='b'))
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD  CONSTRAINT [check_bank1_nullness] CHECK  (([bankName] IS NULL AND [numOfBank] IS NULL OR [bankName] IS NOT NULL AND [numOfBank] IS NOT NULL))
GO
ALTER TABLE [dbo].[userTbl] CHECK CONSTRAINT [check_bank1_nullness]
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD  CONSTRAINT [check_bank2_nullness] CHECK  (([numOfBank] IS NULL AND [numAccount] IS NULL OR [numOfBank] IS NOT NULL AND [numAccount] IS NOT NULL))
GO
ALTER TABLE [dbo].[userTbl] CHECK CONSTRAINT [check_bank2_nullness]
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD  CONSTRAINT [check_typeDegree] CHECK  (([typeOfDegree]<(4)))
GO
ALTER TABLE [dbo].[userTbl] CHECK CONSTRAINT [check_typeDegree]
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD CHECK  (([startYear]<=[excpectedCompletionYear]))
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD CHECK  (([academicParents]=(2) OR [academicParents]=(1) OR [academicParents]=(0)))
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD CHECK  (([anotherScholarship]='No' OR [anotherScholarship]='Yes'))
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD CHECK  (([email] like '%_@__%.__%'))
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD CHECK  (([gender]='F' OR [gender]='M'))
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD CHECK  (([id] like replicate('[0-9]',(9))))
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD CHECK  (([learningDisabilities]='No' OR [learningDisabilities]='Yes'))
GO
ALTER TABLE [dbo].[userTbl]  WITH CHECK ADD CHECK  (([phone] like replicate('[0-9]',(10))))
GO
USE [master]
GO
ALTER DATABASE [HeznekDb] SET  READ_WRITE 
GO
