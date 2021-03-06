USE [RandomNumber]
GO
/****** Object:  Table [dbo].[CashOut]    Script Date: 6/21/2017 5:14:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CashOut](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [uniqueidentifier] NULL,
	[PlayerId] [int] NOT NULL,
	[ActionTypeId] [int] NOT NULL,
	[Ratio] [float] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_CashOut] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_ActionType]    Script Date: 6/21/2017 5:14:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ActionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[ActionTypeLevel] [int] NULL,
	[InCoin] [int] NULL,
	[OutCoin] [int] NULL,
	[IsFirstChirld] [bit] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tbl_ActionType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_CashOut]    Script Date: 6/21/2017 5:14:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_CashOut](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [uniqueidentifier] NULL,
	[PlayerId] [int] NULL,
	[ActionTypeId] [int] NULL,
	[Ratio] [float] NULL,
	[Description] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Player]    Script Date: 6/21/2017 5:14:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Player](
	[guid] [uniqueidentifier] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[PlayerTypeId] [int] NULL,
	[IsDelete] [bit] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tbl_Player] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_PlayerType]    Script Date: 6/21/2017 5:14:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PlayerType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [uniqueidentifier] NULL,
	[Name] [nvarchar](255) NULL,
	[RuleAction] [int] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tbl_PlayerType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Syntax]    Script Date: 6/21/2017 5:14:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Syntax](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [uniqueidentifier] NULL,
	[Name] [nvarchar](255) NULL,
	[ActionTypeId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tbl_Syntax] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Tbl_ActionType] ADD  CONSTRAINT [DF_Tbl_ActionType_guid]  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Tbl_ActionType] ADD  CONSTRAINT [DF_Tbl_ActionType_IsFirstChirld]  DEFAULT ((0)) FOR [IsFirstChirld]
GO
ALTER TABLE [dbo].[Tbl_CashOut] ADD  CONSTRAINT [DF_Tbl_CashOut_guid]  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Tbl_Player] ADD  CONSTRAINT [DF_Tbl_Player_guid]  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Tbl_Player] ADD  CONSTRAINT [DF_Tbl_Player_isDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Tbl_PlayerType] ADD  CONSTRAINT [DF_Tbl_PlayerType_guid]  DEFAULT (newid()) FOR [guid]
GO
ALTER TABLE [dbo].[Tbl_Syntax] ADD  CONSTRAINT [DF_Tbl_Syntax_guid]  DEFAULT (newid()) FOR [guid]
GO
