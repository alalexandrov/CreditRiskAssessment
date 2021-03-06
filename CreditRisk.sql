CREATE DATABASE [CreditRiskDb]
GO

USE [CreditRiskDb]
GO

/****** Object:  Table [dbo].[AgeCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgeCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[From] [int] NULL,
	[To] [int] NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AgeCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChildrenCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChildrenCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NOT NULL,
	[Points] [int] NOT NULL,
	[Money] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.ChildrenCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContractCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ContractCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditPointIntervals]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditPointIntervals](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[From] [int] NOT NULL,
	[To] [int] NOT NULL,
	[Mark] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.CreditPointIntervals] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditRiskProfiles]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditRiskProfiles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AgeCategoryID] [int] NULL,
	[ChildrenCategoryID] [int] NULL,
	[ContractCategoryID] [int] NULL,
	[DelayedPaymentCategoryID] [int] NULL,
	[EducationCategoryID] [int] NULL,
	[LastJobPositionCategoryID] [int] NULL,
	[LastJobWorkingExperienceCategoryID] [int] NULL,
	[MaritalStatusCategoryID] [int] NULL,
	[NetIncomeCategoryID] [int] NULL,
	[OtherCreditPaymentCategoryID] [int] NULL,
	[OtherDepositCategoryID] [int] NULL,
	[OwnCarCategoryID] [int] NULL,
	[OwnHomeCategoryID] [int] NULL,
	[PlaceCategoryID] [int] NULL,
	[SocialSecurityIncomeCategoryID] [int] NULL,
	[WorkingExperienceCategoryID] [int] NULL,
 CONSTRAINT [PK_dbo.CreditRiskProfiles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DelayedPaymentCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DelayedPaymentCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_dbo.DelayedPaymentCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EducationCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Point] [int] NOT NULL,
 CONSTRAINT [PK_dbo.EducationCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LastJobPositionCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LastJobPositionCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_dbo.LastJobPositionCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LastJobWorkingExperienceCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LastJobWorkingExperienceCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[From] [int] NULL,
	[To] [int] NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_dbo.LastJobWorkingExperienceCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MaritalStatusCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaritalStatusCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Points] [int] NOT NULL,
	[Money] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.MaritalStatusCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetIncomeCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetIncomeCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[From] [decimal](18, 2) NOT NULL,
	[To] [decimal](18, 2) NOT NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_dbo.NetIncomeCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OtherCreditPaymentCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherCreditPaymentCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_dbo.OtherCreditPaymentCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OtherDepositCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherDepositCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[From] [decimal](18, 2) NULL,
	[To] [decimal](18, 2) NULL,
	[AdditionalInfo] [nvarchar](max) NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_dbo.OtherDepositCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OwnCarCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OwnCarCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_dbo.OwnCarCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OwnHomeCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OwnHomeCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_dbo.OwnHomeCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlaceCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaceCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PlaceCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SocialSecurityIncomeCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialSecurityIncomeCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[From] [decimal](18, 2) NOT NULL,
	[To] [decimal](18, 2) NOT NULL,
	[Points] [int] NOT NULL,
	[Money] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.SocialSecurityIncomeCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkingExperienceCategories]    Script Date: 19-May-15 4:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingExperienceCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[From] [int] NULL,
	[To] [int] NULL,
	[AdditionalInfo] [nvarchar](max) NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_dbo.WorkingExperienceCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AgeCategories] ON 

INSERT [dbo].[AgeCategories] ([ID], [From], [To], [Points]) VALUES (1, 18, 21, 2)
INSERT [dbo].[AgeCategories] ([ID], [From], [To], [Points]) VALUES (2, 22, 25, 3)
INSERT [dbo].[AgeCategories] ([ID], [From], [To], [Points]) VALUES (3, 26, 35, 7)
INSERT [dbo].[AgeCategories] ([ID], [From], [To], [Points]) VALUES (4, 36, 45, 7)
INSERT [dbo].[AgeCategories] ([ID], [From], [To], [Points]) VALUES (5, 46, 55, 13)
INSERT [dbo].[AgeCategories] ([ID], [From], [To], [Points]) VALUES (6, 56, 65, 1)
INSERT [dbo].[AgeCategories] ([ID], [From], [To], [Points]) VALUES (8, 65, NULL, 1)
SET IDENTITY_INSERT [dbo].[AgeCategories] OFF
SET IDENTITY_INSERT [dbo].[ChildrenCategories] ON 

INSERT [dbo].[ChildrenCategories] ([ID], [Number], [Points], [Money]) VALUES (1, 0, 100, CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[ChildrenCategories] ([ID], [Number], [Points], [Money]) VALUES (2, 1, 74, CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[ChildrenCategories] ([ID], [Number], [Points], [Money]) VALUES (3, 2, 64, CAST(2200.00 AS Decimal(18, 2)))
INSERT [dbo].[ChildrenCategories] ([ID], [Number], [Points], [Money]) VALUES (4, 3, 54, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChildrenCategories] ([ID], [Number], [Points], [Money]) VALUES (5, 4, 34, CAST(1900.00 AS Decimal(18, 2)))
INSERT [dbo].[ChildrenCategories] ([ID], [Number], [Points], [Money]) VALUES (6, 5, 27, CAST(1800.00 AS Decimal(18, 2)))
INSERT [dbo].[ChildrenCategories] ([ID], [Number], [Points], [Money]) VALUES (7, 6, 20, CAST(1200.00 AS Decimal(18, 2)))
INSERT [dbo].[ChildrenCategories] ([ID], [Number], [Points], [Money]) VALUES (8, 7, 0, NULL)
SET IDENTITY_INSERT [dbo].[ChildrenCategories] OFF
SET IDENTITY_INSERT [dbo].[ContractCategories] ON 

INSERT [dbo].[ContractCategories] ([ID], [Name], [Points]) VALUES (1, N'Срочен', 0)
INSERT [dbo].[ContractCategories] ([ID], [Name], [Points]) VALUES (2, N'Безсрочен', 10)
INSERT [dbo].[ContractCategories] ([ID], [Name], [Points]) VALUES (4, N'Дог. за управл. и контрол', 19)
INSERT [dbo].[ContractCategories] ([ID], [Name], [Points]) VALUES (5, N'Граждански', 5)
INSERT [dbo].[ContractCategories] ([ID], [Name], [Points]) VALUES (6, N'Пенсионер', 3)
SET IDENTITY_INSERT [dbo].[ContractCategories] OFF
SET IDENTITY_INSERT [dbo].[CreditPointIntervals] ON 

INSERT [dbo].[CreditPointIntervals] ([ID], [From], [To], [Mark]) VALUES (1, 0, 250, N'Лош')
INSERT [dbo].[CreditPointIntervals] ([ID], [From], [To], [Mark]) VALUES (2, 251, 500, N'Добър')
INSERT [dbo].[CreditPointIntervals] ([ID], [From], [To], [Mark]) VALUES (3, 501, 750, N'Много добър')
INSERT [dbo].[CreditPointIntervals] ([ID], [From], [To], [Mark]) VALUES (4, 751, 100000, N'Отличен')
SET IDENTITY_INSERT [dbo].[CreditPointIntervals] OFF
SET IDENTITY_INSERT [dbo].[CreditRiskProfiles] ON 

INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (1, 1, 1, 5, 1, 1, 3, 2, 1, 6, 1, 3, 1, 2, 1, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (2, 1, 1, 2, 1, 1, 1, 2, 1, 2, 1, 2, 1, 1, 1, 1, 3)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (3, 1, 1, 2, 1, 1, 1, 2, 1, 2, 1, 2, 1, 1, 1, 2, 3)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (4, 2, 8, 2, 1, 2, 2, 3, 2, 2, 1, 3, 2, 3, 2, 2, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (5, 8, 1, 6, 1, 4, 3, 3, 2, 6, 1, 5, 2, 4, 3, 17, 7)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (6, 3, 1, 6, 1, 4, 3, 3, 2, 6, 1, 5, 2, 4, 3, 17, 7)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (7, 3, 1, 6, 1, 4, 3, 3, 2, 6, 2, 5, 2, 4, 3, 17, 7)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (8, 3, 1, 6, 1, 4, 3, 3, 2, 6, 1, 5, 2, 4, 3, 17, 7)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (9, 3, 1, 6, 1, 4, 3, 3, 2, 6, 1, 5, 1, 4, 3, 17, 7)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (10, 3, 1, 6, 1, 4, 3, 3, 2, 6, 1, 5, 1, 2, 3, 17, 7)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (11, 3, 1, 1, 1, 4, 3, 3, 2, 6, 1, 5, 1, 2, 3, 17, 7)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (12, 3, 1, 2, 1, 4, 3, 3, 2, 6, 1, 5, 1, 2, 3, 1, 7)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (13, 3, 1, 2, 1, 4, 3, 3, 2, 6, 1, 5, 1, 2, 3, 12, 7)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (14, 3, 1, 2, 1, 4, 3, 3, 2, 6, 1, 5, 1, 2, 3, 1, 7)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (15, 3, 1, 2, 1, 4, 3, 3, 2, 6, 1, 5, 1, 2, 3, 20, 7)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (16, 3, 1, 2, 1, 4, 3, 3, 2, 6, 1, 5, 1, 2, 3, 1, 7)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (17, 3, 1, 2, 1, 4, 3, 3, 2, 6, 1, 5, 1, 2, 3, 20, 7)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (18, 2, 1, 2, 1, 1, 3, 1, 2, 2, 1, 4, 2, 2, 1, 12, 3)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (19, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 12, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (20, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (21, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (22, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (23, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (24, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (25, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (26, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (27, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (28, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (29, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (30, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (31, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (32, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (33, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (34, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (35, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (36, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 12, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (37, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 1, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (38, 2, 1, 2, 1, 1, 3, 2, 2, 2, 1, 4, 2, 2, 1, 24, 5)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (39, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 14, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (40, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (41, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (42, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (43, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (44, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (45, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (46, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (47, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (48, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (49, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (50, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (51, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (52, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (53, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (54, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (55, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (56, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (57, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (58, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (59, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (60, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (61, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (62, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (63, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (64, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (65, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
INSERT [dbo].[CreditRiskProfiles] ([ID], [AgeCategoryID], [ChildrenCategoryID], [ContractCategoryID], [DelayedPaymentCategoryID], [EducationCategoryID], [LastJobPositionCategoryID], [LastJobWorkingExperienceCategoryID], [MaritalStatusCategoryID], [NetIncomeCategoryID], [OtherCreditPaymentCategoryID], [OtherDepositCategoryID], [OwnCarCategoryID], [OwnHomeCategoryID], [PlaceCategoryID], [SocialSecurityIncomeCategoryID], [WorkingExperienceCategoryID]) VALUES (66, 2, 1, 2, 1, 1, 5, 2, 2, 2, 1, 8, 1, 3, 2, 1, 4)
SET IDENTITY_INSERT [dbo].[CreditRiskProfiles] OFF
SET IDENTITY_INSERT [dbo].[DelayedPaymentCategories] ON 

INSERT [dbo].[DelayedPaymentCategories] ([ID], [Name], [Points]) VALUES (1, N'Не', 4)
INSERT [dbo].[DelayedPaymentCategories] ([ID], [Name], [Points]) VALUES (2, N'Да', 0)
SET IDENTITY_INSERT [dbo].[DelayedPaymentCategories] OFF
SET IDENTITY_INSERT [dbo].[EducationCategories] ON 

INSERT [dbo].[EducationCategories] ([ID], [Name], [Point]) VALUES (1, N'Основно', 3)
INSERT [dbo].[EducationCategories] ([ID], [Name], [Point]) VALUES (2, N'Средно', 6)
INSERT [dbo].[EducationCategories] ([ID], [Name], [Point]) VALUES (3, N'Полувисше', 8)
INSERT [dbo].[EducationCategories] ([ID], [Name], [Point]) VALUES (4, N'Висше', 10)
SET IDENTITY_INSERT [dbo].[EducationCategories] OFF
SET IDENTITY_INSERT [dbo].[LastJobPositionCategories] ON 

INSERT [dbo].[LastJobPositionCategories] ([ID], [Name], [Points]) VALUES (1, N'Пенсионер', 6)
INSERT [dbo].[LastJobPositionCategories] ([ID], [Name], [Points]) VALUES (2, N'Служител', 9)
INSERT [dbo].[LastJobPositionCategories] ([ID], [Name], [Points]) VALUES (3, N'Държавен служител', 10)
INSERT [dbo].[LastJobPositionCategories] ([ID], [Name], [Points]) VALUES (4, N'Експерт', 10)
INSERT [dbo].[LastJobPositionCategories] ([ID], [Name], [Points]) VALUES (5, N'Мениджър средно ниво', 12)
INSERT [dbo].[LastJobPositionCategories] ([ID], [Name], [Points]) VALUES (6, N'Мениджър', 14)
SET IDENTITY_INSERT [dbo].[LastJobPositionCategories] OFF
SET IDENTITY_INSERT [dbo].[LastJobWorkingExperienceCategories] ON 

INSERT [dbo].[LastJobWorkingExperienceCategories] ([ID], [From], [To], [Points]) VALUES (1, NULL, 6, 0)
INSERT [dbo].[LastJobWorkingExperienceCategories] ([ID], [From], [To], [Points]) VALUES (2, 6, 36, 60)
INSERT [dbo].[LastJobWorkingExperienceCategories] ([ID], [From], [To], [Points]) VALUES (3, 37, NULL, 69)
SET IDENTITY_INSERT [dbo].[LastJobWorkingExperienceCategories] OFF
SET IDENTITY_INSERT [dbo].[MaritalStatusCategories] ON 

INSERT [dbo].[MaritalStatusCategories] ([ID], [Name], [Points], [Money]) VALUES (1, N'Семеен', 35, NULL)
INSERT [dbo].[MaritalStatusCategories] ([ID], [Name], [Points], [Money]) VALUES (2, N'Несемеен', 1, CAST(1800.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[MaritalStatusCategories] OFF
SET IDENTITY_INSERT [dbo].[NetIncomeCategories] ON 

INSERT [dbo].[NetIncomeCategories] ([ID], [From], [To], [Points]) VALUES (1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[NetIncomeCategories] ([ID], [From], [To], [Points]) VALUES (2, CAST(101.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 10)
INSERT [dbo].[NetIncomeCategories] ([ID], [From], [To], [Points]) VALUES (3, CAST(201.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 15)
INSERT [dbo].[NetIncomeCategories] ([ID], [From], [To], [Points]) VALUES (4, CAST(501.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[NetIncomeCategories] ([ID], [From], [To], [Points]) VALUES (5, CAST(601.00 AS Decimal(18, 2)), CAST(700.00 AS Decimal(18, 2)), 25)
INSERT [dbo].[NetIncomeCategories] ([ID], [From], [To], [Points]) VALUES (6, CAST(701.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), 35)
INSERT [dbo].[NetIncomeCategories] ([ID], [From], [To], [Points]) VALUES (7, CAST(801.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 115)
INSERT [dbo].[NetIncomeCategories] ([ID], [From], [To], [Points]) VALUES (8, CAST(1001.00 AS Decimal(18, 2)), CAST(1300.00 AS Decimal(18, 2)), 125)
INSERT [dbo].[NetIncomeCategories] ([ID], [From], [To], [Points]) VALUES (9, CAST(1301.00 AS Decimal(18, 2)), CAST(1700.00 AS Decimal(18, 2)), 135)
INSERT [dbo].[NetIncomeCategories] ([ID], [From], [To], [Points]) VALUES (10, CAST(1701.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), 215)
INSERT [dbo].[NetIncomeCategories] ([ID], [From], [To], [Points]) VALUES (11, CAST(2501.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), 235)
INSERT [dbo].[NetIncomeCategories] ([ID], [From], [To], [Points]) VALUES (12, CAST(3001.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), 260)
INSERT [dbo].[NetIncomeCategories] ([ID], [From], [To], [Points]) VALUES (13, CAST(4001.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), 360)
INSERT [dbo].[NetIncomeCategories] ([ID], [From], [To], [Points]) VALUES (14, CAST(5001.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), 380)
INSERT [dbo].[NetIncomeCategories] ([ID], [From], [To], [Points]) VALUES (15, CAST(10001.00 AS Decimal(18, 2)), CAST(9999999.00 AS Decimal(18, 2)), 400)
SET IDENTITY_INSERT [dbo].[NetIncomeCategories] OFF
SET IDENTITY_INSERT [dbo].[OtherCreditPaymentCategories] ON 

INSERT [dbo].[OtherCreditPaymentCategories] ([ID], [Name], [Points]) VALUES (1, N'Не', 20)
INSERT [dbo].[OtherCreditPaymentCategories] ([ID], [Name], [Points]) VALUES (2, N'Да', 0)
SET IDENTITY_INSERT [dbo].[OtherCreditPaymentCategories] OFF
SET IDENTITY_INSERT [dbo].[OtherDepositCategories] ON 

INSERT [dbo].[OtherDepositCategories] ([ID], [From], [To], [AdditionalInfo], [Points]) VALUES (1, NULL, NULL, N'Не', 5)
INSERT [dbo].[OtherDepositCategories] ([ID], [From], [To], [AdditionalInfo], [Points]) VALUES (2, CAST(0.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), NULL, 10)
INSERT [dbo].[OtherDepositCategories] ([ID], [From], [To], [AdditionalInfo], [Points]) VALUES (3, CAST(1001.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), NULL, 20)
INSERT [dbo].[OtherDepositCategories] ([ID], [From], [To], [AdditionalInfo], [Points]) VALUES (4, CAST(5001.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), NULL, 40)
INSERT [dbo].[OtherDepositCategories] ([ID], [From], [To], [AdditionalInfo], [Points]) VALUES (5, CAST(10001.00 AS Decimal(18, 2)), CAST(20000.00 AS Decimal(18, 2)), NULL, 45)
INSERT [dbo].[OtherDepositCategories] ([ID], [From], [To], [AdditionalInfo], [Points]) VALUES (6, CAST(20001.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), NULL, 90)
INSERT [dbo].[OtherDepositCategories] ([ID], [From], [To], [AdditionalInfo], [Points]) VALUES (7, CAST(50001.00 AS Decimal(18, 2)), CAST(100000.00 AS Decimal(18, 2)), NULL, 95)
INSERT [dbo].[OtherDepositCategories] ([ID], [From], [To], [AdditionalInfo], [Points]) VALUES (8, CAST(100000.00 AS Decimal(18, 2)), CAST(9999999.00 AS Decimal(18, 2)), NULL, 100)
SET IDENTITY_INSERT [dbo].[OtherDepositCategories] OFF
SET IDENTITY_INSERT [dbo].[OwnCarCategories] ON 

INSERT [dbo].[OwnCarCategories] ([ID], [Name], [Points]) VALUES (1, N'Не', 0)
INSERT [dbo].[OwnCarCategories] ([ID], [Name], [Points]) VALUES (2, N'Да', 5)
SET IDENTITY_INSERT [dbo].[OwnCarCategories] OFF
SET IDENTITY_INSERT [dbo].[OwnHomeCategories] ON 

INSERT [dbo].[OwnHomeCategories] ([ID], [Name], [Points]) VALUES (1, N'Не', 0)
INSERT [dbo].[OwnHomeCategories] ([ID], [Name], [Points]) VALUES (2, N'Да - Областен град', 10)
INSERT [dbo].[OwnHomeCategories] ([ID], [Name], [Points]) VALUES (3, N'Да - Малък град', 3)
INSERT [dbo].[OwnHomeCategories] ([ID], [Name], [Points]) VALUES (4, N'Да - Село', 1)
SET IDENTITY_INSERT [dbo].[OwnHomeCategories] OFF
SET IDENTITY_INSERT [dbo].[PlaceCategories] ON 

INSERT [dbo].[PlaceCategories] ([ID], [Name], [Points]) VALUES (1, N'Голям град', 25)
INSERT [dbo].[PlaceCategories] ([ID], [Name], [Points]) VALUES (2, N'Малък град', 15)
INSERT [dbo].[PlaceCategories] ([ID], [Name], [Points]) VALUES (3, N'Село', 10)
SET IDENTITY_INSERT [dbo].[PlaceCategories] OFF
SET IDENTITY_INSERT [dbo].[SocialSecurityIncomeCategories] ON 

INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (1, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 0, NULL)
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (2, CAST(251.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 5, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (3, CAST(301.00 AS Decimal(18, 2)), CAST(350.00 AS Decimal(18, 2)), 5, CAST(1500.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (4, CAST(351.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), 5, CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (5, CAST(401.00 AS Decimal(18, 2)), CAST(450.00 AS Decimal(18, 2)), 5, CAST(3300.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (6, CAST(451.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 5, CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (7, CAST(501.00 AS Decimal(18, 2)), CAST(550.00 AS Decimal(18, 2)), 10, CAST(4800.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (8, CAST(551.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), 10, CAST(5500.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (9, CAST(601.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), 10, CAST(6300.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (10, CAST(651.00 AS Decimal(18, 2)), CAST(700.00 AS Decimal(18, 2)), 10, CAST(7000.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (11, CAST(701.00 AS Decimal(18, 2)), CAST(750.00 AS Decimal(18, 2)), 10, CAST(8000.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (12, CAST(751.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), 10, CAST(8600.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (13, CAST(801.00 AS Decimal(18, 2)), CAST(850.00 AS Decimal(18, 2)), 10, CAST(9500.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (14, CAST(851.00 AS Decimal(18, 2)), CAST(900.00 AS Decimal(18, 2)), 10, CAST(10000.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (15, CAST(901.00 AS Decimal(18, 2)), CAST(950.00 AS Decimal(18, 2)), 10, CAST(11000.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (16, CAST(951.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 10, CAST(11700.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (17, CAST(1001.00 AS Decimal(18, 2)), CAST(1200.00 AS Decimal(18, 2)), 20, CAST(15000.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (18, CAST(1201.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), 20, CAST(20000.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (19, CAST(1501.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 30, CAST(25000.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (20, CAST(2001.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), 30, CAST(30000.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (21, CAST(2501.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), 30, CAST(35000.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (22, CAST(3001.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), 40, CAST(45000.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (23, CAST(4001.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), 40, CAST(50000.00 AS Decimal(18, 2)))
INSERT [dbo].[SocialSecurityIncomeCategories] ([ID], [From], [To], [Points], [Money]) VALUES (24, CAST(5000.00 AS Decimal(18, 2)), CAST(9999999.00 AS Decimal(18, 2)), 50, CAST(70000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[SocialSecurityIncomeCategories] OFF
SET IDENTITY_INSERT [dbo].[WorkingExperienceCategories] ON 

INSERT [dbo].[WorkingExperienceCategories] ([ID], [From], [To], [AdditionalInfo], [Points]) VALUES (2, NULL, NULL, N'Пенсия', 5)
INSERT [dbo].[WorkingExperienceCategories] ([ID], [From], [To], [AdditionalInfo], [Points]) VALUES (3, NULL, 12, NULL, 55)
INSERT [dbo].[WorkingExperienceCategories] ([ID], [From], [To], [AdditionalInfo], [Points]) VALUES (4, 13, 36, NULL, 63)
INSERT [dbo].[WorkingExperienceCategories] ([ID], [From], [To], [AdditionalInfo], [Points]) VALUES (5, 37, 60, NULL, 79)
INSERT [dbo].[WorkingExperienceCategories] ([ID], [From], [To], [AdditionalInfo], [Points]) VALUES (6, 61, 120, NULL, 104)
INSERT [dbo].[WorkingExperienceCategories] ([ID], [From], [To], [AdditionalInfo], [Points]) VALUES (7, 120, NULL, NULL, 136)
SET IDENTITY_INSERT [dbo].[WorkingExperienceCategories] OFF
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.AgeCategories_AgeCategory_ID] FOREIGN KEY([AgeCategoryID])
REFERENCES [dbo].[AgeCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.AgeCategories_AgeCategory_ID]
GO
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.ChildrenCategories_ChildrenCategory_ID] FOREIGN KEY([ChildrenCategoryID])
REFERENCES [dbo].[ChildrenCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.ChildrenCategories_ChildrenCategory_ID]
GO
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.ContractCategories_ContractCategory_ID] FOREIGN KEY([ContractCategoryID])
REFERENCES [dbo].[ContractCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.ContractCategories_ContractCategory_ID]
GO
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.DelayedPaymentCategories_DelayedPaymentCategory_ID] FOREIGN KEY([DelayedPaymentCategoryID])
REFERENCES [dbo].[DelayedPaymentCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.DelayedPaymentCategories_DelayedPaymentCategory_ID]
GO
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.EducationCategories_EducationCategory_ID] FOREIGN KEY([EducationCategoryID])
REFERENCES [dbo].[EducationCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.EducationCategories_EducationCategory_ID]
GO
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.LastJobPositionCategories_LastJobPositionCategory_ID] FOREIGN KEY([LastJobPositionCategoryID])
REFERENCES [dbo].[LastJobPositionCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.LastJobPositionCategories_LastJobPositionCategory_ID]
GO
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.LastJobWorkingExperienceCategories_LastJobWorkingExperienceCategory_ID] FOREIGN KEY([LastJobWorkingExperienceCategoryID])
REFERENCES [dbo].[LastJobWorkingExperienceCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.LastJobWorkingExperienceCategories_LastJobWorkingExperienceCategory_ID]
GO
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.MaritalStatusCategories_MaritalStatusCategory_ID] FOREIGN KEY([MaritalStatusCategoryID])
REFERENCES [dbo].[MaritalStatusCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.MaritalStatusCategories_MaritalStatusCategory_ID]
GO
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.NetIncomeCategories_NetIncomeCategory_ID] FOREIGN KEY([NetIncomeCategoryID])
REFERENCES [dbo].[NetIncomeCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.NetIncomeCategories_NetIncomeCategory_ID]
GO
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.OtherCreditPaymentCategories_OtherCreditPaymentCategory_ID] FOREIGN KEY([OtherCreditPaymentCategoryID])
REFERENCES [dbo].[OtherCreditPaymentCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.OtherCreditPaymentCategories_OtherCreditPaymentCategory_ID]
GO
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.OtherDepositCategories_OtherDepositCategory_ID] FOREIGN KEY([OtherDepositCategoryID])
REFERENCES [dbo].[OtherDepositCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.OtherDepositCategories_OtherDepositCategory_ID]
GO
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.OwnCarCategories_OwnCarCategory_ID] FOREIGN KEY([OwnCarCategoryID])
REFERENCES [dbo].[OwnCarCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.OwnCarCategories_OwnCarCategory_ID]
GO
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.OwnHomeCategories_OwnHomeCategory_ID] FOREIGN KEY([OwnHomeCategoryID])
REFERENCES [dbo].[OwnHomeCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.OwnHomeCategories_OwnHomeCategory_ID]
GO
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.PlaceCategories_PlaceCategory_ID] FOREIGN KEY([PlaceCategoryID])
REFERENCES [dbo].[PlaceCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.PlaceCategories_PlaceCategory_ID]
GO
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.SocialSecurityIncomeCategories_SocialSecurityIncomeCategory_ID] FOREIGN KEY([SocialSecurityIncomeCategoryID])
REFERENCES [dbo].[SocialSecurityIncomeCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.SocialSecurityIncomeCategories_SocialSecurityIncomeCategory_ID]
GO
ALTER TABLE [dbo].[CreditRiskProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.WorkingExperienceCategories_WorkingExperienceCategory_ID] FOREIGN KEY([WorkingExperienceCategoryID])
REFERENCES [dbo].[WorkingExperienceCategories] ([ID])
GO
ALTER TABLE [dbo].[CreditRiskProfiles] CHECK CONSTRAINT [FK_dbo.CreditRiskProfiles_dbo.WorkingExperienceCategories_WorkingExperienceCategory_ID]
GO
