Create database GasViet
USE [GasViet]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [bigint] NOT NULL,
	[PriceNew] [bigint] NOT NULL,
	[PriceOld] [bigint] NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[CateID] [int] NULL,
	[Status] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
 CONSTRAINT [PK__Items__3214EC270B91BA14] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ranking]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ranking](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RankName] [nvarchar](max) NOT NULL,
	[Descriptions] [nvarchar](max) NOT NULL,
	[CraeteDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
	[MinPoint] [int] NULL,
	[MaxPoint] [int] NULL,
	[Level] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Config]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Config](
	[Key] [nvarchar](50) NOT NULL,
	[Value] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryNews]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryNews](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
	[ParentID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Role] [int] NOT NULL,
	[PassWord] [varchar](50) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Warranty]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warranty](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreateUserID] [int] NOT NULL,
	[WarrantyCode] [nvarchar](200) NOT NULL,
	[QTY] [int] NOT NULL,
	[Point] [int] NOT NULL,
	[ExpireDate] [datetime] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batch](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BatchName] [nvarchar](200) NOT NULL,
	[BatchCode] [nvarchar](100) NOT NULL,
	[Note] [nvarchar](max) NOT NULL,
	[Price] [bigint] NOT NULL,
	[QTY] [int] NOT NULL,
	[Point] [int] NOT NULL,
	[CreateUserID] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreateUserID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[UrlImage] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[TypeSend] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
	[ItemID] [int] NULL,
	[DisplayOrder] [int] NULL,
 CONSTRAINT [PK__News__3214EC273B75D760] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gift]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gift](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Price] [int] NOT NULL,
	[Point] [int] NOT NULL,
	[UrlImage] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreateUserID] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
	[TelecomType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](200) NOT NULL,
	[ProvinceCode] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Phone] [nvarchar](200) NOT NULL,
	[Code] [nvarchar](200) NOT NULL,
	[Token] [nvarchar](max) NOT NULL,
	[DOB] [datetime] NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Role] [int] NOT NULL,
	[Sex] [int] NOT NULL,
	[AvatarUrl] [nvarchar](max) NOT NULL,
	[ProvinceCode] [int] NOT NULL,
	[DistrictCode] [int] NOT NULL,
	[Point] [int] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[ExpireTocken] [datetime] NOT NULL,
	[Type] [int] NOT NULL,
	[CraeteDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
	[DeviceID] [nvarchar](max) NULL,
	[ConfirmCode] [nvarchar](50) NULL,
	[PointRanking] [int] NULL,
	[AgentCode] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shop](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[ProvinceID] [int] NOT NULL,
	[DistrictID] [int] NULL,
	[Address] [nvarchar](250) NOT NULL,
	[Lati] [float] NOT NULL,
	[Long] [float] NOT NULL,
	[PlusCode] [varchar](max) NULL,
	[ContactName] [nvarchar](250) NULL,
	[ContactPhone] [nvarchar](250) NULL,
	[AgentID] [int] NULL,
	[CraeteDate] [datetime] NULL,
	[IsActive] [int] NOT NULL,
 CONSTRAINT [PK__Shop__3214EC271CBC4616] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WarrantyCard]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarrantyCard](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerActiveID] [int] NULL,
	[WarrantyCardCode] [nvarchar](200) NOT NULL,
	[Status] [int] NOT NULL,
	[ActiveDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
	[WarrantyID] [int] NULL,
 CONSTRAINT [PK__Warranty__3214EC2729572725] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Viewed] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK__Notifica__3214EC274D94879B] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserModifiedID] [int] NULL,
	[CustomerID] [int] NOT NULL,
	[GiftID] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Point] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShopImage]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopImage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ShopID] [int] NOT NULL,
	[Path] [varchar](250) NULL,
	[IsActive] [int] NOT NULL,
	[CraeteDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Message]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Viewed] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[CraeteDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembersPointHistory]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembersPointHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[Point] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[AddPointCode] [nvarchar](100) NOT NULL,
	[TypeAdd] [int] NOT NULL,
	[CraeteDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Balance] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Code] [nvarchar](150) NULL,
	[CustomerActiveID] [int] NULL,
	[ActiveDate] [datetime] NULL,
	[Address] [nvarchar](150) NULL,
	[Phone] [nvarchar](150) NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Card]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreateUserID] [int] NOT NULL,
	[CustomerActiveID] [int] NULL,
	[Code] [nvarchar](200) NOT NULL,
	[Seri] [nvarchar](200) NOT NULL,
	[TelecomType] [int] NOT NULL,
	[CardType] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[ExpireDate] [datetime] NOT NULL,
	[ActiveDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BatchID] [int] NOT NULL,
	[CustomerActiveID] [int] NULL,
	[ProductCode] [nvarchar](200) NOT NULL,
	[ActiveDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
 CONSTRAINT [PK__Product__3214EC271920BF5C] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[CustomerID] [int] NOT NULL,
	[Discount] [bigint] NOT NULL,
	[TotalPrice] [bigint] NOT NULL,
	[Status] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
	[BuyerName] [nvarchar](max) NULL,
	[BuyerPhone] [nvarchar](max) NULL,
	[BuyerAddress] [nvarchar](max) NULL,
	[PointAdd] [int] NULL,
 CONSTRAINT [PK__Orders__3214EC2707C12930] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 11/25/2019 10:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[QTY] [int] NOT NULL,
	[SumPrice] [bigint] NOT NULL,
	[Status] [int] NOT NULL,
	[Discount] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsActive] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_CategoryNews_ParentID]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[CategoryNews] ADD  CONSTRAINT [DF_CategoryNews_ParentID]  DEFAULT ((0)) FOR [ParentID]
GO
/****** Object:  Default [DF__Customer__Tocken__1367E606]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ('') FOR [Token]
GO
/****** Object:  Default [DF__Customer__Addres__164452B1]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ('') FOR [Address]
GO
/****** Object:  Default [DF__Items__ImageUrl__0D7A0286]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF__Items__ImageUrl__0D7A0286]  DEFAULT ('') FOR [ImageUrl]
GO
/****** Object:  Default [DF_Items_CateID]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_CateID]  DEFAULT ((1)) FOR [CateID]
GO
/****** Object:  Default [DF_News_DisplayOrder]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_News_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
/****** Object:  Default [DF_Orders_PointAdd]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_PointAdd]  DEFAULT ((0)) FOR [PointAdd]
GO
/****** Object:  Default [DF__Ranking__Descrip__787EE5A0]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Ranking] ADD  DEFAULT ('') FOR [Descriptions]
GO
/****** Object:  Default [DF__Users__Tocken__014935CB]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('') FOR [UserName]
GO
/****** Object:  ForeignKey [FK__Agent__CustomerA__17F790F9]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD FOREIGN KEY([CustomerActiveID])
REFERENCES [dbo].[Customer] ([ID])
GO
/****** Object:  ForeignKey [FK__Batch__CreateUse__060DEAE8]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Batch]  WITH CHECK ADD FOREIGN KEY([CreateUserID])
REFERENCES [dbo].[Users] ([UserID])
GO
/****** Object:  ForeignKey [FK__Card__CreateUser__20C1E124]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Card]  WITH CHECK ADD FOREIGN KEY([CreateUserID])
REFERENCES [dbo].[Users] ([UserID])
GO
/****** Object:  ForeignKey [FK__Card__CustomerAc__21B6055D]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Card]  WITH CHECK ADD FOREIGN KEY([CustomerActiveID])
REFERENCES [dbo].[Customer] ([ID])
GO
/****** Object:  ForeignKey [FK__Customer__Distri__15502E78]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([DistrictCode])
REFERENCES [dbo].[District] ([Code])
GO
/****** Object:  ForeignKey [FK__Customer__Provin__145C0A3F]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([ProvinceCode])
REFERENCES [dbo].[Province] ([Code])
GO
/****** Object:  ForeignKey [FK__District__Provin__0EA330E9]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[District]  WITH CHECK ADD FOREIGN KEY([ProvinceCode])
REFERENCES [dbo].[Province] ([Code])
GO
/****** Object:  ForeignKey [FK__Gift__CreateUser__34C8D9D1]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Gift]  WITH CHECK ADD FOREIGN KEY([CreateUserID])
REFERENCES [dbo].[Users] ([UserID])
GO
/****** Object:  ForeignKey [FK__MembersPo__Custo__300424B4]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[MembersPointHistory]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
/****** Object:  ForeignKey [FK__Message__Custome__6FE99F9F]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
/****** Object:  ForeignKey [FK__Message__UserID__6EF57B66]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
/****** Object:  ForeignKey [FK__News__CategoryID__3E52440B]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK__News__CategoryID__3E52440B] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CategoryNews] ([ID])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK__News__CategoryID__3E52440B]
GO
/****** Object:  ForeignKey [FK__News__CreateUser__3D5E1FD2]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK__News__CreateUser__3D5E1FD2] FOREIGN KEY([CreateUserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK__News__CreateUser__3D5E1FD2]
GO
/****** Object:  ForeignKey [FK_News_ItemI]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_ItemI] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Items] ([ID])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_ItemI]
GO
/****** Object:  ForeignKey [FK__Notificat__Custo__4F7CD00D]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK__Notificat__Custo__4F7CD00D] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK__Notificat__Custo__4F7CD00D]
GO
/****** Object:  ForeignKey [FK__OrderItem__ItemI__1332DBDC]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK__OrderItem__ItemI__1332DBDC] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Items] ([ID])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK__OrderItem__ItemI__1332DBDC]
GO
/****** Object:  ForeignKey [FK__OrderItem__Order__123EB7A3]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK__OrderItem__Order__123EB7A3] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK__OrderItem__Order__123EB7A3]
GO
/****** Object:  ForeignKey [FK_Orders_Customer]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customer]
GO
/****** Object:  ForeignKey [FK__Product__BatchID__1B0907CE]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__BatchID__1B0907CE] FOREIGN KEY([BatchID])
REFERENCES [dbo].[Batch] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__BatchID__1B0907CE]
GO
/****** Object:  ForeignKey [FK__Product__Custome__1BFD2C07]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__Custome__1BFD2C07] FOREIGN KEY([CustomerActiveID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Custome__1BFD2C07]
GO
/****** Object:  ForeignKey [FK__Request__Custome__68487DD7]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
/****** Object:  ForeignKey [FK__Request__GiftID__693CA210]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD FOREIGN KEY([GiftID])
REFERENCES [dbo].[Gift] ([ID])
GO
/****** Object:  ForeignKey [FK__Request__UserMod__6754599E]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD FOREIGN KEY([UserModifiedID])
REFERENCES [dbo].[Users] ([UserID])
GO
/****** Object:  ForeignKey [FK_Shop_District]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_District] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([Code])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_District]
GO
/****** Object:  ForeignKey [FK_Shop_Province]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Province] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([Code])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_Province]
GO
/****** Object:  ForeignKey [FK__ShopImage__ShopI__236943A5]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[ShopImage]  WITH CHECK ADD  CONSTRAINT [FK__ShopImage__ShopI__236943A5] FOREIGN KEY([ShopID])
REFERENCES [dbo].[Shop] ([ID])
GO
ALTER TABLE [dbo].[ShopImage] CHECK CONSTRAINT [FK__ShopImage__ShopI__236943A5]
GO
/****** Object:  ForeignKey [FK__Warranty__Create__267ABA7A]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[Warranty]  WITH CHECK ADD FOREIGN KEY([CreateUserID])
REFERENCES [dbo].[Users] ([UserID])
GO
/****** Object:  ForeignKey [FK__WarrantyC__Custo__2B3F6F97]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[WarrantyCard]  WITH CHECK ADD  CONSTRAINT [FK__WarrantyC__Custo__2B3F6F97] FOREIGN KEY([CustomerActiveID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[WarrantyCard] CHECK CONSTRAINT [FK__WarrantyC__Custo__2B3F6F97]
GO
/****** Object:  ForeignKey [FK_WarrantyCard_Warranty]    Script Date: 11/25/2019 10:21:02 ******/
ALTER TABLE [dbo].[WarrantyCard]  WITH CHECK ADD  CONSTRAINT [FK_WarrantyCard_Warranty] FOREIGN KEY([WarrantyID])
REFERENCES [dbo].[Warranty] ([ID])
GO
ALTER TABLE [dbo].[WarrantyCard] CHECK CONSTRAINT [FK_WarrantyCard_Warranty]
GO
