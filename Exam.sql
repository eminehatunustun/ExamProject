/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [Exam]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 2.12.2017 02:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[ExamID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [ntext] NULL,
	[ExamDate] [date] NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 2.12.2017 02:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [ntext] NULL,
	[OptionA] [ntext] NULL,
	[OptionB] [ntext] NULL,
	[OptionC] [ntext] NULL,
	[OptionD] [ntext] NULL,
	[TrueOption] [ntext] NULL,
	[ExamID] [int] NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2.12.2017 02:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](20) NULL,
	[Password] [nvarchar](max) NULL,
	[Name] [nvarchar](20) NULL,
	[Surname] [nvarchar](20) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Exam] ON 

INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (4, N'GM and Cruise are testing cars in a chaotic city, ', CAST(N'2017-11-30' AS Date), NULL)
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (5, N'GM and Cruise are testing cars in a chaotic city, ', CAST(N'2017-11-30' AS Date), NULL)
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (7, N'Life in Soviet Ukraine wasnâ€™t pretty. But the pr', CAST(N'2017-11-30' AS Date), NULL)
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (8, N'The redesigned crossover is the first car you can ', CAST(N'2017-12-01' AS Date), NULL)
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (9, N'The filmmaker collaborated with sculptors for thre', CAST(N'2017-12-01' AS Date), N'Filmmaker Guillermo del </span>Toro is a virtuoso maker of monsters—from the Pale Man of <em><a href="https://youtu.be/E7XGNPXdlGQ" target="_blank">Pan’s Labyrinth</a></em> to <em><a href="https://youtu.be/5guMumPFBag" target="_blank">Pacific Rim</a></em>’s Kaiju, they’re wondrous yet terrifying. But the star of his new film, <em><a href="https://youtu.be/368_ovPsJk8" target="_blank">The Shape of Water</a></em>, is no mere beast, del Toro says: “He’s a leading man.” The Cold War fairy tale depicts a doomed romance between a captive fish-man and a mute janitor (Sally Hawkins). <a href="https://www.wired.com/2013/06/pacific-rim-guillermo-del-toro-feature/">Del Toro</a> collaborated with sculptors for three years to perfect his amphibian, from the creature’s Renaissance nose to his statuesque derriere. (It’s carefully shaped from foam latex.) We asked the beastmaster to dissect his work.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (10, N'The filmmaker collaborated with sculptors for thre', CAST(N'2017-12-01' AS Date), N'Filmmaker Guillermo del </span>Toro is a virtuoso maker of monsters—from the Pale Man of <em><a href="https://youtu.be/E7XGNPXdlGQ" target="_blank">Pan’s Labyrinth</a></em> to <em><a href="https://youtu.be/5guMumPFBag" target="_blank">Pacific Rim</a></em>’s Kaiju, they’re wondrous yet terrifying. But the star of his new film, <em><a href="https://youtu.be/368_ovPsJk8" target="_blank">The Shape of Water</a></em>, is no mere beast, del Toro says: “He’s a leading man.” The Cold War fairy tale depicts a doomed romance between a captive fish-man and a mute janitor (Sally Hawkins). <a href="https://www.wired.com/2013/06/pacific-rim-guillermo-del-toro-feature/">Del Toro</a> collaborated with sculptors for three years to perfect his amphibian, from the creature’s Renaissance nose to his statuesque derriere. (It’s carefully shaped from foam latex.) We asked the beastmaster to dissect his work.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (11, N'The filmmaker collaborated with sculptors for thre', CAST(N'2017-12-01' AS Date), N'Filmmaker Guillermo del </span>Toro is a virtuoso maker of monsters—from the Pale Man of <em><a href="https://youtu.be/E7XGNPXdlGQ" target="_blank">Pan’s Labyrinth</a></em> to <em><a href="https://youtu.be/5guMumPFBag" target="_blank">Pacific Rim</a></em>’s Kaiju, they’re wondrous yet terrifying. But the star of his new film, <em><a href="https://youtu.be/368_ovPsJk8" target="_blank">The Shape of Water</a></em>, is no mere beast, del Toro says: “He’s a leading man.” The Cold War fairy tale depicts a doomed romance between a captive fish-man and a mute janitor (Sally Hawkins). <a href="https://www.wired.com/2013/06/pacific-rim-guillermo-del-toro-feature/">Del Toro</a> collaborated with sculptors for three years to perfect his amphibian, from the creature’s Renaissance nose to his statuesque derriere. (It’s carefully shaped from foam latex.) We asked the beastmaster to dissect his work.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (12, N'The filmmaker collaborated with sculptors for thre', CAST(N'2017-12-01' AS Date), N'Filmmaker Guillermo del </span>Toro is a virtuoso maker of monsters—from the Pale Man of <em><a href="https://youtu.be/E7XGNPXdlGQ" target="_blank">Pan’s Labyrinth</a></em> to <em><a href="https://youtu.be/5guMumPFBag" target="_blank">Pacific Rim</a></em>’s Kaiju, they’re wondrous yet terrifying. But the star of his new film, <em><a href="https://youtu.be/368_ovPsJk8" target="_blank">The Shape of Water</a></em>, is no mere beast, del Toro says: “He’s a leading man.” The Cold War fairy tale depicts a doomed romance between a captive fish-man and a mute janitor (Sally Hawkins). <a href="https://www.wired.com/2013/06/pacific-rim-guillermo-del-toro-feature/">Del Toro</a> collaborated with sculptors for three years to perfect his amphibian, from the creature’s Renaissance nose to his statuesque derriere. (It’s carefully shaped from foam latex.) We asked the beastmaster to dissect his work.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (13, N'The filmmaker collaborated with sculptors for thre', CAST(N'2017-12-01' AS Date), N'Filmmaker Guillermo del </span>Toro is a virtuoso maker of monsters—from the Pale Man of <em><a href="https://youtu.be/E7XGNPXdlGQ" target="_blank">Pan’s Labyrinth</a></em> to <em><a href="https://youtu.be/5guMumPFBag" target="_blank">Pacific Rim</a></em>’s Kaiju, they’re wondrous yet terrifying. But the star of his new film, <em><a href="https://youtu.be/368_ovPsJk8" target="_blank">The Shape of Water</a></em>, is no mere beast, del Toro says: “He’s a leading man.” The Cold War fairy tale depicts a doomed romance between a captive fish-man and a mute janitor (Sally Hawkins). <a href="https://www.wired.com/2013/06/pacific-rim-guillermo-del-toro-feature/">Del Toro</a> collaborated with sculptors for three years to perfect his amphibian, from the creature’s Renaissance nose to his statuesque derriere. (It’s carefully shaped from foam latex.) We asked the beastmaster to dissect his work.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (14, N'The filmmaker collaborated with sculptors for thre', CAST(N'2017-12-01' AS Date), N'Filmmaker Guillermo del </span>Toro is a virtuoso maker of monsters—from the Pale Man of <em><a href="https://youtu.be/E7XGNPXdlGQ" target="_blank">Pan’s Labyrinth</a></em> to <em><a href="https://youtu.be/5guMumPFBag" target="_blank">Pacific Rim</a></em>’s Kaiju, they’re wondrous yet terrifying. But the star of his new film, <em><a href="https://youtu.be/368_ovPsJk8" target="_blank">The Shape of Water</a></em>, is no mere beast, del Toro says: “He’s a leading man.” The Cold War fairy tale depicts a doomed romance between a captive fish-man and a mute janitor (Sally Hawkins). <a href="https://www.wired.com/2013/06/pacific-rim-guillermo-del-toro-feature/">Del Toro</a> collaborated with sculptors for three years to perfect his amphibian, from the creature’s Renaissance nose to his statuesque derriere. (It’s carefully shaped from foam latex.) We asked the beastmaster to dissect his work.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (15, N'The filmmaker collaborated with sculptors for thre', CAST(N'2017-12-02' AS Date), N'Filmmaker Guillermo del </span>Toro is a virtuoso maker of monsters—from the Pale Man of <em><a href="https://youtu.be/E7XGNPXdlGQ" target="_blank">Pan’s Labyrinth</a></em> to <em><a href="https://youtu.be/5guMumPFBag" target="_blank">Pacific Rim</a></em>’s Kaiju, they’re wondrous yet terrifying. But the star of his new film, <em><a href="https://youtu.be/368_ovPsJk8" target="_blank">The Shape of Water</a></em>, is no mere beast, del Toro says: “He’s a leading man.” The Cold War fairy tale depicts a doomed romance between a captive fish-man and a mute janitor (Sally Hawkins). <a href="https://www.wired.com/2013/06/pacific-rim-guillermo-del-toro-feature/">Del Toro</a> collaborated with sculptors for three years to perfect his amphibian, from the creature’s Renaissance nose to his statuesque derriere. (It’s carefully shaped from foam latex.) We asked the beastmaster to dissect his work.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (16, N'The filmmaker collaborated with sculptors for thre', CAST(N'2017-12-02' AS Date), N'Filmmaker Guillermo del </span>Toro is a virtuoso maker of monsters—from the Pale Man of <em><a href="https://youtu.be/E7XGNPXdlGQ" target="_blank">Pan’s Labyrinth</a></em> to <em><a href="https://youtu.be/5guMumPFBag" target="_blank">Pacific Rim</a></em>’s Kaiju, they’re wondrous yet terrifying. But the star of his new film, <em><a href="https://youtu.be/368_ovPsJk8" target="_blank">The Shape of Water</a></em>, is no mere beast, del Toro says: “He’s a leading man.” The Cold War fairy tale depicts a doomed romance between a captive fish-man and a mute janitor (Sally Hawkins). <a href="https://www.wired.com/2013/06/pacific-rim-guillermo-del-toro-feature/">Del Toro</a> collaborated with sculptors for three years to perfect his amphibian, from the creature’s Renaissance nose to his statuesque derriere. (It’s carefully shaped from foam latex.) We asked the beastmaster to dissect his work.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (17, N'The filmmaker collaborated with sculptors for thre', CAST(N'2017-12-02' AS Date), N'Filmmaker Guillermo del </span>Toro is a virtuoso maker of monsters—from the Pale Man of <em><a href="https://youtu.be/E7XGNPXdlGQ" target="_blank">Pan’s Labyrinth</a></em> to <em><a href="https://youtu.be/5guMumPFBag" target="_blank">Pacific Rim</a></em>’s Kaiju, they’re wondrous yet terrifying. But the star of his new film, <em><a href="https://youtu.be/368_ovPsJk8" target="_blank">The Shape of Water</a></em>, is no mere beast, del Toro says: “He’s a leading man.” The Cold War fairy tale depicts a doomed romance between a captive fish-man and a mute janitor (Sally Hawkins). <a href="https://www.wired.com/2013/06/pacific-rim-guillermo-del-toro-feature/">Del Toro</a> collaborated with sculptors for three years to perfect his amphibian, from the creature’s Renaissance nose to his statuesque derriere. (It’s carefully shaped from foam latex.) We asked the beastmaster to dissect his work.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (18, N'The filmmaker collaborated with sculptors for thre', CAST(N'2017-12-02' AS Date), N'Filmmaker Guillermo del </span>Toro is a virtuoso maker of monsters—from the Pale Man of <em><a href="https://youtu.be/E7XGNPXdlGQ" target="_blank">Pan’s Labyrinth</a></em> to <em><a href="https://youtu.be/5guMumPFBag" target="_blank">Pacific Rim</a></em>’s Kaiju, they’re wondrous yet terrifying. But the star of his new film, <em><a href="https://youtu.be/368_ovPsJk8" target="_blank">The Shape of Water</a></em>, is no mere beast, del Toro says: “He’s a leading man.” The Cold War fairy tale depicts a doomed romance between a captive fish-man and a mute janitor (Sally Hawkins). <a href="https://www.wired.com/2013/06/pacific-rim-guillermo-del-toro-feature/">Del Toro</a> collaborated with sculptors for three years to perfect his amphibian, from the creature’s Renaissance nose to his statuesque derriere. (It’s carefully shaped from foam latex.) We asked the beastmaster to dissect his work.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (19, N'With the indictment of President Trump''s former na', CAST(N'2017-12-02' AS Date), N'Just 17 months </span>after leading chants of “Lock her up” at <a href="https://www.wired.com/2016/07/republican-convention-fends-off-hackers/">the Republican National Convention</a>, protesting FBI director James Comey’s handling of the <a href="https://www.wired.com/2016/09/actually-clinton-destroyed-phones-better/">Hillary Clinton email investigation</a>, retired Lt. Gen. Michael Flynn himself faced the inside of a Washington courtroom Friday morning.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (20, N'With the indictment of President Trump''s former na', CAST(N'2017-12-02' AS Date), N'Just 17 months </span>after leading chants of “Lock her up” at <a href="https://www.wired.com/2016/07/republican-convention-fends-off-hackers/">the Republican National Convention</a>, protesting FBI director James Comey’s handling of the <a href="https://www.wired.com/2016/09/actually-clinton-destroyed-phones-better/">Hillary Clinton email investigation</a>, retired Lt. Gen. Michael Flynn himself faced the inside of a Washington courtroom Friday morning.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (21, N'With the indictment of President Trump''s former na', CAST(N'2017-12-02' AS Date), N'Just 17 months </span>after leading chants of “Lock her up” at <a href="https://www.wired.com/2016/07/republican-convention-fends-off-hackers/">the Republican National Convention</a>, protesting FBI director James Comey’s handling of the <a href="https://www.wired.com/2016/09/actually-clinton-destroyed-phones-better/">Hillary Clinton email investigation</a>, retired Lt. Gen. Michael Flynn himself faced the inside of a Washington courtroom Friday morning.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (22, N'With the indictment of President Trump''s former na', CAST(N'2017-12-02' AS Date), N'Just 17 months </span>after leading chants of “Lock her up” at <a href="https://www.wired.com/2016/07/republican-convention-fends-off-hackers/">the Republican National Convention</a>, protesting FBI director James Comey’s handling of the <a href="https://www.wired.com/2016/09/actually-clinton-destroyed-phones-better/">Hillary Clinton email investigation</a>, retired Lt. Gen. Michael Flynn himself faced the inside of a Washington courtroom Friday morning.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (23, N'With the indictment of President Trump''s former na', CAST(N'2017-12-02' AS Date), N'Just 17 months </span>after leading chants of “Lock her up” at <a href="https://www.wired.com/2016/07/republican-convention-fends-off-hackers/">the Republican National Convention</a>, protesting FBI director James Comey’s handling of the <a href="https://www.wired.com/2016/09/actually-clinton-destroyed-phones-better/">Hillary Clinton email investigation</a>, retired Lt. Gen. Michael Flynn himself faced the inside of a Washington courtroom Friday morning.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (24, N'With the indictment of President Trump''s former na', CAST(N'2017-12-02' AS Date), N'Just 17 months </span>after leading chants of “Lock her up” at <a href="https://www.wired.com/2016/07/republican-convention-fends-off-hackers/">the Republican National Convention</a>, protesting FBI director James Comey’s handling of the <a href="https://www.wired.com/2016/09/actually-clinton-destroyed-phones-better/">Hillary Clinton email investigation</a>, retired Lt. Gen. Michael Flynn himself faced the inside of a Washington courtroom Friday morning.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (25, N'AFP photographer Sonny Tumbelaka was there for the', CAST(N'2017-12-02' AS Date), N'Last week, Indonesia&#x27;s </span>Mount Agung began erupting for the first time in more than half a century, ejecting clouds of smoke and ash <a href="https://magma.vsi.esdm.go.id/vona/display?noticenumber=2017AGU20" target="_blank">nearly 23,000 feet</a> into the sky. But as thousands fled the volcano’s slopes, AFP photographer Sonny Tumbelaka sped excitedly towards it. “Eruptions make beautiful pictures,” he says.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (26, N'AFP photographer Sonny Tumbelaka was there for the', CAST(N'2017-12-02' AS Date), N'Last week, Indonesia&#x27;s </span>Mount Agung began erupting for the first time in more than half a century, ejecting clouds of smoke and ash <a href="https://magma.vsi.esdm.go.id/vona/display?noticenumber=2017AGU20" target="_blank">nearly 23,000 feet</a> into the sky. But as thousands fled the volcano’s slopes, AFP photographer Sonny Tumbelaka sped excitedly towards it. “Eruptions make beautiful pictures,” he says.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (27, N'AFP photographer Sonny Tumbelaka was there for the', CAST(N'2017-12-02' AS Date), N'Last week, Indonesia&#x27;s </span>Mount Agung began erupting for the first time in more than half a century, ejecting clouds of smoke and ash <a href="https://magma.vsi.esdm.go.id/vona/display?noticenumber=2017AGU20" target="_blank">nearly 23,000 feet</a> into the sky. But as thousands fled the volcano’s slopes, AFP photographer Sonny Tumbelaka sped excitedly towards it. “Eruptions make beautiful pictures,” he says.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (28, N'AFP photographer Sonny Tumbelaka was there for the', CAST(N'2017-12-02' AS Date), N'Last week, Indonesia&#x27;s </span>Mount Agung began erupting for the first time in more than half a century, ejecting clouds of smoke and ash <a href="https://magma.vsi.esdm.go.id/vona/display?noticenumber=2017AGU20" target="_blank">nearly 23,000 feet</a> into the sky. But as thousands fled the volcano’s slopes, AFP photographer Sonny Tumbelaka sped excitedly towards it. “Eruptions make beautiful pictures,” he says.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (29, N'AFP photographer Sonny Tumbelaka was there for the', CAST(N'2017-12-02' AS Date), N'Last week, Indonesia&#x27;s </span>Mount Agung began erupting for the first time in more than half a century, ejecting clouds of smoke and ash <a href="https://magma.vsi.esdm.go.id/vona/display?noticenumber=2017AGU20" target="_blank">nearly 23,000 feet</a> into the sky. But as thousands fled the volcano’s slopes, AFP photographer Sonny Tumbelaka sped excitedly towards it. “Eruptions make beautiful pictures,” he says.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (30, N'AFP photographer Sonny Tumbelaka was there for the', CAST(N'2017-12-02' AS Date), N'Last week, Indonesia&#x27;s </span>Mount Agung began erupting for the first time in more than half a century, ejecting clouds of smoke and ash <a href="https://magma.vsi.esdm.go.id/vona/display?noticenumber=2017AGU20" target="_blank">nearly 23,000 feet</a> into the sky. But as thousands fled the volcano’s slopes, AFP photographer Sonny Tumbelaka sped excitedly towards it. “Eruptions make beautiful pictures,” he says.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (31, N'AFP photographer Sonny Tumbelaka was there for the', CAST(N'2017-12-02' AS Date), N'Last week, Indonesia&#x27;s </span>Mount Agung began erupting for the first time in more than half a century, ejecting clouds of smoke and ash <a href="https://magma.vsi.esdm.go.id/vona/display?noticenumber=2017AGU20" target="_blank">nearly 23,000 feet</a> into the sky. But as thousands fled the volcano’s slopes, AFP photographer Sonny Tumbelaka sped excitedly towards it. “Eruptions make beautiful pictures,” he says.')
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate], [Description]) VALUES (32, N'Germany''s Prosper-Haniel coal mine is a symbol of ', CAST(N'2017-12-02' AS Date), N'The elevator that </span>carries Germany’s last coal miners on their daily commute down the mine shaft travels at about 40 feet a second, nearly 30 miles an hour. “Like a motorcycle in a city,” says Christof Beicke, the public affairs officer for the Ruhr mining consortium, as the door rattles shut. It’s not a comforting analogy.')
SET IDENTITY_INSERT [dbo].[Exam] OFF
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([ID], [Question], [OptionA], [OptionB], [OptionC], [OptionD], [TrueOption], [ExamID]) VALUES (1, N' Aşağıdaki cemiyetlerden hangisi Mustafa Kemal tarafından kurulmuştur?', N'1', N'2', N'3', N'4', N'1', 31)
INSERT [dbo].[Questions] ([ID], [Question], [OptionA], [OptionB], [OptionC], [OptionD], [TrueOption], [ExamID]) VALUES (2, N'II. Meşrutiyetin ilanında aşağıdakilerin hangisi etkili olmuştur?', N'Milliyetçilik fikrinin yaygınlaşmasına', N'Ticaretin gelişmesine', N'Sömürgeciliğin sona ermesine', N'Akdeniz limanlarının önemini kaybetmesine', N'Ticaretin gelişmesine', 31)
INSERT [dbo].[Questions] ([ID], [Question], [OptionA], [OptionB], [OptionC], [OptionD], [TrueOption], [ExamID]) VALUES (3, N'XIX. yüzyılda çıkarılabilecek asker sayısını öğrenmek amacıyla yalnız erkeklerin sayıl­dığı ilk nüfus sayımı aşağıdaki padişahların hangisi döneminde yapılmıştır?', N'I. Mahmut', N'III. Selim', N'II. Mahmut', N'Abdülmecit', N'III. Selim', 31)
INSERT [dbo].[Questions] ([ID], [Question], [OptionA], [OptionB], [OptionC], [OptionD], [TrueOption], [ExamID]) VALUES (4, N'II. Abdülhamit aşağıdaki olaylardan hangisinden sonra tahttan indirilmiştir?', N'Mudanya Konferansı', N'Habord Raporu', N'Moskova Antlaşması', N'Aımiral Bristol Raporu', N'Mudanya Konferansı', 31)
INSERT [dbo].[Questions] ([ID], [Question], [OptionA], [OptionB], [OptionC], [OptionD], [TrueOption], [ExamID]) VALUES (5, N'Soru', N'', N'', N'', N'', N'', 32)
INSERT [dbo].[Questions] ([ID], [Question], [OptionA], [OptionB], [OptionC], [OptionD], [TrueOption], [ExamID]) VALUES (6, N'Soru', N'', N'', N'', N'', N'', 32)
INSERT [dbo].[Questions] ([ID], [Question], [OptionA], [OptionB], [OptionC], [OptionD], [TrueOption], [ExamID]) VALUES (7, N'Soru', N'', N'', N'', N'', N'', 32)
INSERT [dbo].[Questions] ([ID], [Question], [OptionA], [OptionB], [OptionC], [OptionD], [TrueOption], [ExamID]) VALUES (8, N'Soru', N'', N'', N'', N'', N'', 32)
INSERT [dbo].[Questions] ([ID], [Question], [OptionA], [OptionB], [OptionC], [OptionD], [TrueOption], [ExamID]) VALUES (9, N'Soru', N'', N'', N'', N'', N'', 32)
SET IDENTITY_INSERT [dbo].[Questions] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [UserName], [Password], [Name], [Surname]) VALUES (1, N'admin', N'123456', N'Emine Hatun', N'Üstün')
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [Name], [Surname]) VALUES (2, N'eminehatunustun', N'System.Web.UI.WebControls.TextBox', N'Emine Hatun', N'Üstün')
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [Name], [Surname]) VALUES (3, N'eminehatunustun', N'System.Collections.Specialized.ListDictionary+NodeKeyValueCollection', N'Emine Hatun', N'Üstün')
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [Name], [Surname]) VALUES (4, N'eminehatunustun', N'System.Collections.Specialized.ListDictionary+NodeKeyValueCollection', N'Emine Hatun', N'Üstün')
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [Name], [Surname]) VALUES (5, N'mlö', N'möç', N'şld', N'ldöç')
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [Name], [Surname]) VALUES (6, N'MÖ', N'MKÖ', N'KL', N'MÖ')
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [Name], [Surname]) VALUES (7, N'eminehatunustun', N'123456', N'Emine Hatun', N'Üstün')
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [Name], [Surname]) VALUES (8, N'eminehatunustun', N'123456', N'Emine Hatun', N'Üstün')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Exam] ADD  CONSTRAINT [DF_Exam_ExamDate]  DEFAULT (getdate()) FOR [ExamDate]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Exam] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Exam] ([ExamID])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Exam]
GO
/****** Object:  StoredProcedure [dbo].[pr_AddExam]    Script Date: 2.12.2017 02:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[pr_AddExam]
 @Title nvarChar(50), @Description ntext as
 Declare @ExID int 
	Insert Into Exam 
	(Title, Description)
	Values 
	(@Title, @Description)
	Set @ExID = SCOPE_IDENTITY() 
	return @ExID
GO
