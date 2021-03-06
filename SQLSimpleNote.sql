CREATE DATABASE SimpleNote
GO

USE [SimpleNote]
GO
/****** Object:  Table [dbo].[Note]    Script Date: 6/28/2020 9:35:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Note](
	[ID] [int] NOT NULL,
	[Header] [nvarchar](100) NULL,
	[Context] [nvarchar](max) NULL,
	[Time] [nchar](100) NULL,
	[TimeEdit] [nchar](100) NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Note_Backup]    Script Date: 6/28/2020 9:35:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Note_Backup](
	[ID] [int] NOT NULL,
	[Header] [nvarchar](100) NULL,
	[Context] [nvarchar](max) NULL,
	[Time] [nchar](100) NULL,
	[TimeEdit] [nchar](100) NULL,
 CONSTRAINT [PK_Note_Backup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Note_Tag]    Script Date: 6/28/2020 9:35:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Note_Tag](
	[ID] [int] NOT NULL,
	[MiniTag] [nvarchar](100) NOT NULL,
	[Description] [nchar](10) NULL,
 CONSTRAINT [PK_Note_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[MiniTag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 6/28/2020 9:35:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[Tag] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[Tag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/28/2020 9:35:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Username] [nchar](25) NOT NULL,
	[Password] [nchar](50) NOT NULL,
	[Email] [nchar](100) NULL,
	[Phone] [nchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Note]    Script Date: 6/28/2020 9:35:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Note](
	[ID] [int] NOT NULL,
	[Username] [nchar](25) NOT NULL,
	[Description] [nchar](10) NULL,
 CONSTRAINT [PK_User_Note] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Note_Backup]    Script Date: 6/28/2020 9:35:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Note_Backup](
	[ID] [int] NOT NULL,
	[Username] [nchar](25) NOT NULL,
	[Description] [nchar](10) NULL,
 CONSTRAINT [PK_User_Note_Backup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Note] ([ID], [Header], [Context], [Time], [TimeEdit]) VALUES (2, N'Hôm nay ăn gì', N'Hổng biết nữa', N'Jun 26, 2020 08:43 AM                                                                               ', N'Jun 26, 2020 22:20 PM                                                                               ')
INSERT [dbo].[Note] ([ID], [Header], [Context], [Time], [TimeEdit]) VALUES (4, N'New note...', N'', N'Jun 26, 2020 22:20 PM                                                                               ', N'Jun 26, 2020 22:20 PM                                                                               ')
GO
INSERT [dbo].[Note_Tag] ([ID], [MiniTag], [Description]) VALUES (2, N'aa', NULL)
INSERT [dbo].[Note_Tag] ([ID], [MiniTag], [Description]) VALUES (2, N'aaa', NULL)
GO
INSERT [dbo].[Tag] ([Tag]) VALUES (N'aa')
INSERT [dbo].[Tag] ([Tag]) VALUES (N'aaa')
GO
INSERT [dbo].[User] ([Username], [Password], [Email], [Phone]) VALUES (N'luong1403                ', N'14032018                                          ', N'mailuong@gmail.com                                                                                  ', N'0773084015                                        ')
INSERT [dbo].[User] ([Username], [Password], [Email], [Phone]) VALUES (N'tuongkl01                ', N'tuong123                                          ', N'huutuong1403@gmail.com                                                                              ', N'0396084832                                        ')
INSERT [dbo].[User] ([Username], [Password], [Email], [Phone]) VALUES (N'tuongne0704              ', N'tuong123                                          ', N'huutuong1403@gmail.com                                                                              ', N'0396084832                                        ')
INSERT [dbo].[User] ([Username], [Password], [Email], [Phone]) VALUES (N'tuongu123                ', N'tuongkl01                                         ', N'tuong@gmail.com                                                                                     ', N'0396084832                                        ')
GO
INSERT [dbo].[User_Note] ([ID], [Username], [Description]) VALUES (2, N'tuongkl01                ', NULL)
INSERT [dbo].[User_Note] ([ID], [Username], [Description]) VALUES (4, N'tuongkl01                ', NULL)
GO
ALTER TABLE [dbo].[Note_Tag]  WITH CHECK ADD  CONSTRAINT [FK_Note_Tag_Note] FOREIGN KEY([ID])
REFERENCES [dbo].[Note] ([ID])
GO
ALTER TABLE [dbo].[Note_Tag] CHECK CONSTRAINT [FK_Note_Tag_Note]
GO
ALTER TABLE [dbo].[User_Note]  WITH CHECK ADD  CONSTRAINT [FK_User_Note_Note] FOREIGN KEY([ID])
REFERENCES [dbo].[Note] ([ID])
GO
ALTER TABLE [dbo].[User_Note] CHECK CONSTRAINT [FK_User_Note_Note]
GO
ALTER TABLE [dbo].[User_Note]  WITH CHECK ADD  CONSTRAINT [FK_User_Note_User] FOREIGN KEY([Username])
REFERENCES [dbo].[User] ([Username])
GO
ALTER TABLE [dbo].[User_Note] CHECK CONSTRAINT [FK_User_Note_User]
GO
ALTER TABLE [dbo].[User_Note_Backup]  WITH CHECK ADD  CONSTRAINT [FK_User_Note_Backup_Note_Backup] FOREIGN KEY([ID])
REFERENCES [dbo].[Note_Backup] ([ID])
GO
ALTER TABLE [dbo].[User_Note_Backup] CHECK CONSTRAINT [FK_User_Note_Backup_Note_Backup]
GO
ALTER TABLE [dbo].[User_Note_Backup]  WITH CHECK ADD  CONSTRAINT [FK_User_Note_Backup_User] FOREIGN KEY([Username])
REFERENCES [dbo].[User] ([Username])
GO
ALTER TABLE [dbo].[User_Note_Backup] CHECK CONSTRAINT [FK_User_Note_Backup_User]
GO
