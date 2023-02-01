/****** Object:  Table [dbo].[ETL Columns]    Script Date: 2/1/2023 10:32:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ETL Columns](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Table Schema] [nvarchar](10) NULL,
	[Table Name] [nvarchar](100) NULL,
	[Column Name] [nvarchar](200) NULL,
	[Table Type] [nvarchar](100) NULL,
	[Column Type] [nvarchar](100) NULL,
	[Transformation] [int] NULL,
	[Expression] [nvarchar](max) NULL,
	[Destination Schema] [nvarchar](10) NULL,
	[Destination Table] [nvarchar](100) NULL,
	[Destination Column] [nvarchar](200) NULL,
	[IsKey] [int] NULL,
	[IsChecksum] [int] NULL,
	[IsSCD2] [int] NULL,
	[IsAutoID] [int] NULL,
	[IsLSD] [int] NULL,
	[IsHashbyteKey] [int] NULL,
	[IsHashbyteKeySource] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ETL Data Period]    Script Date: 2/1/2023 10:32:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ETL Data Period](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Live Start Date] [datetime] NULL,
	[Hist Data Transfer Years] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ETL Log Tables]    Script Date: 2/1/2023 10:32:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ETL Log Tables](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TableSchema] [nvarchar](50) NULL,
	[TableName] [nvarchar](100) NULL,
	[TableType] [nvarchar](50) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Duration-Minutes] [int] NULL,
	[RecordCount] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[Message] [nvarchar](max) NULL,
	[DeltaType] [nvarchar](50) NULL,
	[SQLScript] [nvarchar](max) NULL,
	[TablePipeline] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ETL Systems]    Script Date: 2/1/2023 10:32:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ETL Systems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[System] [nvarchar](250) NULL,
	[Zone] [nvarchar](150) NULL,
	[Type] [nvarchar](150) NULL,
	[Active] [int] NULL,
	[Connector] [nvarchar](250) NULL,
	[Connection String] [nvarchar](500) NULL,
	[Server] [nvarchar](250) NULL,
	[Database] [nvarchar](250) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[FilePath1] [nvarchar](250) NULL,
	[FilePath2] [nvarchar](250) NULL,
	[FileName] [nvarchar](100) NULL,
	[Storage Account Name] [nvarchar](150) NULL,
	[Storage Account Key] [nvarchar](250) NULL,
	[Key Vault Name] [nvarchar](50) NULL,
	[Key Vault Key] [nvarchar](250) NULL,
	[Key Vault Secret Name] [nvarchar](50) NULL,
	[Key Vault Secret Value] [nvarchar](250) NULL,
	[Authentication] [nvarchar](150) NULL,
	[Prefixes] [nvarchar](150) NULL,
	[Suffixes] [nvarchar](150) NULL,
	[Product] [nvarchar](150) NULL,
	[Version] [nvarchar](150) NULL,
	[Release] [nvarchar](150) NULL,
	[Remarks] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ETL Tables]    Script Date: 2/1/2023 10:32:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ETL Tables](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Table Schema] [nvarchar](10) NULL,
	[Table Name] [nvarchar](100) NULL,
	[Table Type] [nvarchar](50) NULL,
	[Enable] [int] NULL,
	[Destination Schema] [nvarchar](10) NULL,
	[Destination Table] [nvarchar](100) NULL,
	[Pipeline] [nvarchar](100) NULL,
	[Description] [nvarchar](500) NULL,
	[Load SP] [nvarchar](100) NULL,
	[ETL Mode] [nvarchar](50) NULL,
	[Schedule] [nvarchar](100) NULL,
	[Timestamp] [datetime] NULL,
	[User] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ETL Columns] ON 
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (1, N'dbo', N'DimCurrency', N'CurrencyKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (2, N'dbo', N'DimCurrency', N'CurrencyAlternateKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (3, N'dbo', N'DimCurrency', N'CurrencyName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (4, N'dbo', N'DimCustomer', N'CustomerKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (5, N'dbo', N'DimCustomer', N'GeographyKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (6, N'dbo', N'DimCustomer', N'CustomerAlternateKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (7, N'dbo', N'DimCustomer', N'Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (8, N'dbo', N'DimCustomer', N'FirstName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (9, N'dbo', N'DimCustomer', N'MiddleName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (10, N'dbo', N'DimCustomer', N'LastName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (11, N'dbo', N'DimCustomer', N'NameStyle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (12, N'dbo', N'DimCustomer', N'BirthDate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (13, N'dbo', N'DimCustomer', N'MaritalStatus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (14, N'dbo', N'DimCustomer', N'Suffix', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (15, N'dbo', N'DimCustomer', N'Gender', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (16, N'dbo', N'DimCustomer', N'EmailAddress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (17, N'dbo', N'DimCustomer', N'YearlyIncome', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (18, N'dbo', N'DimCustomer', N'TotalChildren', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (19, N'dbo', N'DimCustomer', N'NumberChildrenAtHome', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (20, N'dbo', N'DimCustomer', N'EnglishEducation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (21, N'dbo', N'DimCustomer', N'SpanishEducation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (22, N'dbo', N'DimCustomer', N'FrenchEducation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (23, N'dbo', N'DimCustomer', N'EnglishOccupation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (24, N'dbo', N'DimCustomer', N'SpanishOccupation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (25, N'dbo', N'DimCustomer', N'FrenchOccupation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (26, N'dbo', N'DimCustomer', N'HouseOwnerFlag', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (27, N'dbo', N'DimCustomer', N'NumberCarsOwned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (28, N'dbo', N'DimCustomer', N'AddressLine1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (29, N'dbo', N'DimCustomer', N'AddressLine2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (30, N'dbo', N'DimCustomer', N'Phone', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (31, N'dbo', N'DimCustomer', N'DateFirstPurchase', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (32, N'dbo', N'DimCustomer', N'CommuteDistance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (33, N'dbo', N'DimDate', N'DateKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (34, N'dbo', N'DimDate', N'FullDateAlternateKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (35, N'dbo', N'DimDate', N'DayNumberOfWeek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (36, N'dbo', N'DimDate', N'EnglishDayNameOfWeek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (37, N'dbo', N'DimDate', N'SpanishDayNameOfWeek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (38, N'dbo', N'DimDate', N'FrenchDayNameOfWeek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (39, N'dbo', N'DimDate', N'DayNumberOfMonth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (40, N'dbo', N'DimDate', N'DayNumberOfYear', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (41, N'dbo', N'DimDate', N'WeekNumberOfYear', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (42, N'dbo', N'DimDate', N'EnglishMonthName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (43, N'dbo', N'DimDate', N'SpanishMonthName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (44, N'dbo', N'DimDate', N'FrenchMonthName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (45, N'dbo', N'DimDate', N'MonthNumberOfYear', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (46, N'dbo', N'DimDate', N'CalendarQuarter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (47, N'dbo', N'DimDate', N'CalendarYear', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (48, N'dbo', N'DimDate', N'CalendarSemester', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (49, N'dbo', N'DimDate', N'FiscalQuarter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (50, N'dbo', N'DimDate', N'FiscalYear', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (51, N'dbo', N'DimDate', N'FiscalSemester', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (52, N'dbo', N'DimGeography', N'GeographyKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (53, N'dbo', N'DimGeography', N'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (54, N'dbo', N'DimGeography', N'StateProvinceCode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (55, N'dbo', N'DimGeography', N'StateProvinceName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (56, N'dbo', N'DimGeography', N'CountryRegionCode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (57, N'dbo', N'DimGeography', N'EnglishCountryRegionName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (58, N'dbo', N'DimGeography', N'SpanishCountryRegionName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (59, N'dbo', N'DimGeography', N'FrenchCountryRegionName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (60, N'dbo', N'DimGeography', N'PostalCode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (61, N'dbo', N'DimGeography', N'SalesTerritoryKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (62, N'dbo', N'DimGeography', N'IpAddressLocator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (63, N'dbo', N'DimProduct', N'ProductKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (64, N'dbo', N'DimProduct', N'ProductAlternateKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (65, N'dbo', N'DimProduct', N'ProductSubcategoryKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (66, N'dbo', N'DimProduct', N'WeightUnitMeasureCode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (67, N'dbo', N'DimProduct', N'SizeUnitMeasureCode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (68, N'dbo', N'DimProduct', N'EnglishProductName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (69, N'dbo', N'DimProduct', N'SpanishProductName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (70, N'dbo', N'DimProduct', N'FrenchProductName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (71, N'dbo', N'DimProduct', N'StandardCost', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (72, N'dbo', N'DimProduct', N'FinishedGoodsFlag', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (73, N'dbo', N'DimProduct', N'Color', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (74, N'dbo', N'DimProduct', N'SafetyStockLevel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (75, N'dbo', N'DimProduct', N'ReorderPoint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (76, N'dbo', N'DimProduct', N'ListPrice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (77, N'dbo', N'DimProduct', N'Size', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (78, N'dbo', N'DimProduct', N'SizeRange', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (79, N'dbo', N'DimProduct', N'Weight', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (80, N'dbo', N'DimProduct', N'DaysToManufacture', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (81, N'dbo', N'DimProduct', N'ProductLine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (82, N'dbo', N'DimProduct', N'DealerPrice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (83, N'dbo', N'DimProduct', N'Class', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (84, N'dbo', N'DimProduct', N'Style', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (85, N'dbo', N'DimProduct', N'ModelName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (86, N'dbo', N'DimProduct', N'LargePhoto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (87, N'dbo', N'DimProduct', N'EnglishDescription', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (88, N'dbo', N'DimProduct', N'FrenchDescription', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (89, N'dbo', N'DimProduct', N'ChineseDescription', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (90, N'dbo', N'DimProduct', N'ArabicDescription', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (91, N'dbo', N'DimProduct', N'HebrewDescription', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (92, N'dbo', N'DimProduct', N'ThaiDescription', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (93, N'dbo', N'DimProduct', N'GermanDescription', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (94, N'dbo', N'DimProduct', N'JapaneseDescription', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (95, N'dbo', N'DimProduct', N'TurkishDescription', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (96, N'dbo', N'DimProduct', N'StartDate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (97, N'dbo', N'DimProduct', N'EndDate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (98, N'dbo', N'DimProduct', N'Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (99, N'dbo', N'DimProductCategory', N'ProductCategoryKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (100, N'dbo', N'DimProductCategory', N'ProductCategoryAlternateKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (101, N'dbo', N'DimProductCategory', N'EnglishProductCategoryName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (102, N'dbo', N'DimProductCategory', N'SpanishProductCategoryName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (103, N'dbo', N'DimProductCategory', N'FrenchProductCategoryName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (104, N'dbo', N'DimProductSubcategory', N'ProductSubcategoryKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (105, N'dbo', N'DimProductSubcategory', N'ProductSubcategoryAlternateKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (106, N'dbo', N'DimProductSubcategory', N'EnglishProductSubcategoryName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (107, N'dbo', N'DimProductSubcategory', N'SpanishProductSubcategoryName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (108, N'dbo', N'DimProductSubcategory', N'FrenchProductSubcategoryName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (109, N'dbo', N'DimProductSubcategory', N'ProductCategoryKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (110, N'dbo', N'DimPromotion', N'PromotionKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (111, N'dbo', N'DimPromotion', N'PromotionAlternateKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (112, N'dbo', N'DimPromotion', N'EnglishPromotionName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (113, N'dbo', N'DimPromotion', N'SpanishPromotionName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (114, N'dbo', N'DimPromotion', N'FrenchPromotionName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (115, N'dbo', N'DimPromotion', N'DiscountPct', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (116, N'dbo', N'DimPromotion', N'EnglishPromotionType', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (117, N'dbo', N'DimPromotion', N'SpanishPromotionType', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (118, N'dbo', N'DimPromotion', N'FrenchPromotionType', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (119, N'dbo', N'DimPromotion', N'EnglishPromotionCategory', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (120, N'dbo', N'DimPromotion', N'SpanishPromotionCategory', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (121, N'dbo', N'DimPromotion', N'FrenchPromotionCategory', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (122, N'dbo', N'DimPromotion', N'StartDate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (123, N'dbo', N'DimPromotion', N'EndDate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (124, N'dbo', N'DimPromotion', N'MinQty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (125, N'dbo', N'DimPromotion', N'MaxQty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (126, N'dbo', N'DimSalesTerritory', N'SalesTerritoryKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (127, N'dbo', N'DimSalesTerritory', N'SalesTerritoryAlternateKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (128, N'dbo', N'DimSalesTerritory', N'SalesTerritoryRegion', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (129, N'dbo', N'DimSalesTerritory', N'SalesTerritoryCountry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (130, N'dbo', N'DimSalesTerritory', N'SalesTerritoryGroup', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (131, N'dbo', N'DimSalesTerritory', N'SalesTerritoryImage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (132, N'dbo', N'FactInternetSales', N'ProductKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (133, N'dbo', N'FactInternetSales', N'OrderDateKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (134, N'dbo', N'FactInternetSales', N'DueDateKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (135, N'dbo', N'FactInternetSales', N'ShipDateKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (136, N'dbo', N'FactInternetSales', N'CustomerKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (137, N'dbo', N'FactInternetSales', N'PromotionKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (138, N'dbo', N'FactInternetSales', N'CurrencyKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (139, N'dbo', N'FactInternetSales', N'SalesTerritoryKey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (140, N'dbo', N'FactInternetSales', N'SalesOrderNumber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (141, N'dbo', N'FactInternetSales', N'SalesOrderLineNumber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (142, N'dbo', N'FactInternetSales', N'RevisionNumber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (143, N'dbo', N'FactInternetSales', N'OrderQuantity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (144, N'dbo', N'FactInternetSales', N'UnitPrice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (145, N'dbo', N'FactInternetSales', N'ExtendedAmount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (146, N'dbo', N'FactInternetSales', N'UnitPriceDiscountPct', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (147, N'dbo', N'FactInternetSales', N'DiscountAmount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (148, N'dbo', N'FactInternetSales', N'ProductStandardCost', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (149, N'dbo', N'FactInternetSales', N'TotalProductCost', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (150, N'dbo', N'FactInternetSales', N'SalesAmount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (151, N'dbo', N'FactInternetSales', N'TaxAmt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (152, N'dbo', N'FactInternetSales', N'Freight', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (153, N'dbo', N'FactInternetSales', N'CarrierTrackingNumber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (154, N'dbo', N'FactInternetSales', N'CustomerPONumber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (155, N'dbo', N'FactInternetSales', N'OrderDate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (156, N'dbo', N'FactInternetSales', N'DueDate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
INSERT [dbo].[ETL Columns] ([ID], [Table Schema], [Table Name], [Column Name], [Table Type], [Column Type], [Transformation], [Expression], [Destination Schema], [Destination Table], [Destination Column], [IsKey], [IsChecksum], [IsSCD2], [IsAutoID], [IsLSD], [IsHashbyteKey], [IsHashbyteKeySource]) VALUES (157, N'dbo', N'FactInternetSales', N'ShipDate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, N'0')
GO
SET IDENTITY_INSERT [dbo].[ETL Columns] OFF
GO
SET IDENTITY_INSERT [dbo].[ETL Data Period] ON 
GO
INSERT [dbo].[ETL Data Period] ([ID], [Live Start Date], [Hist Data Transfer Years]) VALUES (1, CAST(N'2014-01-01T00:00:00.000' AS DateTime), 2)
GO
SET IDENTITY_INSERT [dbo].[ETL Data Period] OFF
GO
SET IDENTITY_INSERT [dbo].[ETL Log Tables] ON 
GO
INSERT [dbo].[ETL Log Tables] ([ID], [TableSchema], [TableName], [TableType], [StartTime], [EndTime], [Duration-Minutes], [RecordCount], [Status], [Message], [DeltaType], [SQLScript], [TablePipeline]) VALUES (1, N'dbo', N'DimCurrency', N'Dim', CAST(N'2023-01-25T14:26:45.863' AS DateTime), CAST(N'2023-01-25T14:27:00.300' AS DateTime), 0, 105, N'Success', N'Table loaded', N'Full Load', N'Unknown', N'01-Load-Data  ')
GO
INSERT [dbo].[ETL Log Tables] ([ID], [TableSchema], [TableName], [TableType], [StartTime], [EndTime], [Duration-Minutes], [RecordCount], [Status], [Message], [DeltaType], [SQLScript], [TablePipeline]) VALUES (2, N'dbo', N'DimCurrency', N'Dim', CAST(N'2023-01-27T11:57:25.180' AS DateTime), CAST(N'2023-01-27T11:57:45.803' AS DateTime), 0, 105, N'Success', N'Table loaded', N'Full Load', N'Unknown', N'01-Load-Data  ')
GO
INSERT [dbo].[ETL Log Tables] ([ID], [TableSchema], [TableName], [TableType], [StartTime], [EndTime], [Duration-Minutes], [RecordCount], [Status], [Message], [DeltaType], [SQLScript], [TablePipeline]) VALUES (3, N'dbo', N'FactInternetSales', N'Fact', CAST(N'2023-01-27T11:58:14.410' AS DateTime), CAST(N'2023-01-27T11:58:23.177' AS DateTime), 0, 1970, N'Success', N'Table loaded', N'Full Load', N'Unknown', N'01-Load-Data  ')
GO
SET IDENTITY_INSERT [dbo].[ETL Log Tables] OFF
GO
SET IDENTITY_INSERT [dbo].[ETL Systems] ON 
GO
INSERT [dbo].[ETL Systems] ([ID], [System], [Zone], [Type], [Active], [Connector], [Connection String], [Server], [Database], [Username], [Password], [FilePath1], [FilePath2], [FileName], [Storage Account Name], [Storage Account Key], [Key Vault Name], [Key Vault Key], [Key Vault Secret Name], [Key Vault Secret Value], [Authentication], [Prefixes], [Suffixes], [Product], [Version], [Release], [Remarks]) VALUES (1, N'Source-SQL', N'Source', N'OnPrem SQL', 1, NULL, NULL, N'NIBLP1361', N'AdventureWorksDW2019', N'sql-lcl-read', N'NBLDPMD@2023rda', NULL, NULL, NULL, NULL, NULL, N'kvabc', NULL, N'src-db-pwd', N'E4mlsMm56inAASDXwPpY', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ETL Systems] ([ID], [System], [Zone], [Type], [Active], [Connector], [Connection String], [Server], [Database], [Username], [Password], [FilePath1], [FilePath2], [FileName], [Storage Account Name], [Storage Account Key], [Key Vault Name], [Key Vault Key], [Key Vault Secret Name], [Key Vault Secret Value], [Authentication], [Prefixes], [Suffixes], [Product], [Version], [Release], [Remarks]) VALUES (2, N'Destination-SQL', N'Destination', N'OnPrem SQL', 1, NULL, NULL, N'NIBLP1361', N'AdventureWorksUAT', N'sql-lcl-write', N'NBLDPMD@2023wta', NULL, NULL, NULL, NULL, NULL, N'kvabc', NULL, N'dst-db-pwd', N'E4mlsMm56inAASDXwPpY', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ETL Systems] ([ID], [System], [Zone], [Type], [Active], [Connector], [Connection String], [Server], [Database], [Username], [Password], [FilePath1], [FilePath2], [FileName], [Storage Account Name], [Storage Account Key], [Key Vault Name], [Key Vault Key], [Key Vault Secret Name], [Key Vault Secret Value], [Authentication], [Prefixes], [Suffixes], [Product], [Version], [Release], [Remarks]) VALUES (3, N'Destination-SQL', N'Destination', N'Azure SQL', 1, NULL, NULL, N'abc-sqlserver-dev.database.windows.net', N'abc-db-dev', N'sql-azr-write', N'E4mlsMm56inAASDXwPpY', NULL, NULL, NULL, NULL, NULL, N'kvabc', NULL, N'dst-db-pwd', N'E4mlsMm56inAASDXwPpY', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ETL Systems] OFF
GO
SET IDENTITY_INSERT [dbo].[ETL Tables] ON 
GO
INSERT [dbo].[ETL Tables] ([ID], [Table Schema], [Table Name], [Table Type], [Enable], [Destination Schema], [Destination Table], [Pipeline], [Description], [Load SP], [ETL Mode], [Schedule], [Timestamp], [User]) VALUES (1, N'dbo', N'DimCurrency', N'Dim', 1, N'dbo', N'DimCurrency', N'PL-Dims-1', NULL, NULL, N'Full', NULL, NULL, NULL)
GO
INSERT [dbo].[ETL Tables] ([ID], [Table Schema], [Table Name], [Table Type], [Enable], [Destination Schema], [Destination Table], [Pipeline], [Description], [Load SP], [ETL Mode], [Schedule], [Timestamp], [User]) VALUES (2, N'dbo', N'DimCustomer', N'Dim', 0, N'dbo', N'DimCustomer', N'PL-Dims-1', NULL, NULL, N'Full', NULL, NULL, NULL)
GO
INSERT [dbo].[ETL Tables] ([ID], [Table Schema], [Table Name], [Table Type], [Enable], [Destination Schema], [Destination Table], [Pipeline], [Description], [Load SP], [ETL Mode], [Schedule], [Timestamp], [User]) VALUES (3, N'dbo', N'DimDate', N'Dim', 0, N'dbo', N'DimDate', N'PL-Dims-1', NULL, NULL, N'Full', NULL, NULL, NULL)
GO
INSERT [dbo].[ETL Tables] ([ID], [Table Schema], [Table Name], [Table Type], [Enable], [Destination Schema], [Destination Table], [Pipeline], [Description], [Load SP], [ETL Mode], [Schedule], [Timestamp], [User]) VALUES (4, N'dbo', N'DimGeography', N'Dim', 0, N'dbo', N'DimGeography', N'PL-Dims-1', NULL, NULL, N'Full', NULL, NULL, NULL)
GO
INSERT [dbo].[ETL Tables] ([ID], [Table Schema], [Table Name], [Table Type], [Enable], [Destination Schema], [Destination Table], [Pipeline], [Description], [Load SP], [ETL Mode], [Schedule], [Timestamp], [User]) VALUES (5, N'dbo', N'DimProduct', N'Dim', 0, N'dbo', N'DimProduct', N'PL-Dims-1', NULL, NULL, N'Full', NULL, NULL, NULL)
GO
INSERT [dbo].[ETL Tables] ([ID], [Table Schema], [Table Name], [Table Type], [Enable], [Destination Schema], [Destination Table], [Pipeline], [Description], [Load SP], [ETL Mode], [Schedule], [Timestamp], [User]) VALUES (6, N'dbo', N'DimProductCategory', N'Dim', 0, N'dbo', N'DimProductCategory', N'PL-Dims-1', NULL, NULL, N'Full', NULL, NULL, NULL)
GO
INSERT [dbo].[ETL Tables] ([ID], [Table Schema], [Table Name], [Table Type], [Enable], [Destination Schema], [Destination Table], [Pipeline], [Description], [Load SP], [ETL Mode], [Schedule], [Timestamp], [User]) VALUES (7, N'dbo', N'DimProductSubcategory', N'Dim', 0, N'dbo', N'DimProductSubcategory', N'PL-Dims-1', NULL, NULL, N'Full', NULL, NULL, NULL)
GO
INSERT [dbo].[ETL Tables] ([ID], [Table Schema], [Table Name], [Table Type], [Enable], [Destination Schema], [Destination Table], [Pipeline], [Description], [Load SP], [ETL Mode], [Schedule], [Timestamp], [User]) VALUES (8, N'dbo', N'DimPromotion', N'Dim', 0, N'dbo', N'DimPromotion', N'PL-Dims-1', NULL, NULL, N'Full', NULL, NULL, NULL)
GO
INSERT [dbo].[ETL Tables] ([ID], [Table Schema], [Table Name], [Table Type], [Enable], [Destination Schema], [Destination Table], [Pipeline], [Description], [Load SP], [ETL Mode], [Schedule], [Timestamp], [User]) VALUES (9, N'dbo', N'DimSalesTerritory', N'Dim', 0, N'dbo', N'DimSalesTerritory', N'PL-Dims-1', NULL, NULL, N'Full', NULL, NULL, NULL)
GO
INSERT [dbo].[ETL Tables] ([ID], [Table Schema], [Table Name], [Table Type], [Enable], [Destination Schema], [Destination Table], [Pipeline], [Description], [Load SP], [ETL Mode], [Schedule], [Timestamp], [User]) VALUES (10, N'dbo', N'FactInternetSales', N'Fact', 1, N'dbo', N'FactInternetSales', N'PL-Facts-1', NULL, NULL, N'Full', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ETL Tables] OFF
GO
