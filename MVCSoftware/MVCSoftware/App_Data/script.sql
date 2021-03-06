USE [Mydatabase]
GO
/****** Object:  UserDefinedFunction [dbo].[GetName_From_FirstLastMiddle]    Script Date: 06/25/2016 01:38:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetName_From_FirstLastMiddle] 
(
	@firstName NVARCHAR(100),
	@middleName NVARCHAR(100),
	@lastName NVARCHAR(100)
)
RETURNS NVARCHAR(200)
AS
BEGIN
	DECLARE @full_Name NVARCHAR(200)
	
	IF ISNULL(@middleName,'') <> ''
	 SET @full_Name = @firstName + ' ' + @middleName + ' ' + @lastName 
	ELSE
	 SET @full_Name = @firstName + ' ' + @lastName
	 
	 RETURN @full_Name
END
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 06/25/2016 01:38:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Gender_Id] [int] IDENTITY(1,1) NOT NULL,
	[Vaule] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Gender_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Gender] ON
INSERT [dbo].[Gender] ([Gender_Id], [Vaule], [Code]) VALUES (1, N'Male', N'M')
INSERT [dbo].[Gender] ([Gender_Id], [Vaule], [Code]) VALUES (2, N'Female', N'F')
SET IDENTITY_INSERT [dbo].[Gender] OFF
/****** Object:  Table [dbo].[Class]    Script Date: 06/25/2016 01:38:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[Class_Id] [int] IDENTITY(1,1) NOT NULL,
	[Class_Code] [nvarchar](10) NOT NULL,
	[Class_Name] [nvarchar](100) NOT NULL,
	[ok] [nchar](10) NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Class_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Class] ON
INSERT [dbo].[Class] ([Class_Id], [Class_Code], [Class_Name], [ok]) VALUES (1, N'F', N'First ', NULL)
INSERT [dbo].[Class] ([Class_Id], [Class_Code], [Class_Name], [ok]) VALUES (2, N'S', N'Second', NULL)
INSERT [dbo].[Class] ([Class_Id], [Class_Code], [Class_Name], [ok]) VALUES (3, N'T', N'Third', NULL)
INSERT [dbo].[Class] ([Class_Id], [Class_Code], [Class_Name], [ok]) VALUES (4, N'F', N'Four', NULL)
INSERT [dbo].[Class] ([Class_Id], [Class_Code], [Class_Name], [ok]) VALUES (5, N'Fi', N'Fifth', NULL)
INSERT [dbo].[Class] ([Class_Id], [Class_Code], [Class_Name], [ok]) VALUES (6, N'Si', N'Sixth', NULL)
SET IDENTITY_INSERT [dbo].[Class] OFF
/****** Object:  Table [dbo].[City]    Script Date: 06/25/2016 01:38:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[City_Id] [int] IDENTITY(1,1) NOT NULL,
	[City_Code] [nvarchar](100) NOT NULL,
	[City_Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[City_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (1, N'AHE', N'Ahmedabad')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (2, N'BAN', N'Bangalore')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (3, N'CAL', N'Calcutta ')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (4, N'CHA', N'Chandigarh')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (5, N'CHE', N'Chennai')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (6, N'COI', N'Coimbatore')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (7, N'GUR', N'Gurgaon')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (8, N'HYD', N'Hyderabad')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (9, N'IND', N'Indore')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (10, N'JAI', N'Jaipur')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (11, N'KOC', N'Kochi')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (12, N'KOL', N'Kolkata')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (13, N'MUM', N'Mumbai')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (14, N'NAG', N'Nagpur')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (15, N'DEL', N'New Delhi')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (16, N'OTH', N'Other (India)')
INSERT [dbo].[City] ([City_Id], [City_Code], [City_Name]) VALUES (17, N'PUN', N'Pune')
SET IDENTITY_INSERT [dbo].[City] OFF
/****** Object:  Table [dbo].[AddressType]    Script Date: 06/25/2016 01:38:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressType](
	[AddressType_Id] [int] IDENTITY(1,1) NOT NULL,
	[AddressType_Code] [nvarchar](100) NOT NULL,
	[AddressType_Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_AddressType] PRIMARY KEY CLUSTERED 
(
	[AddressType_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AddressType] ON
INSERT [dbo].[AddressType] ([AddressType_Id], [AddressType_Code], [AddressType_Name]) VALUES (1, N'PER', N'Permanent')
INSERT [dbo].[AddressType] ([AddressType_Id], [AddressType_Code], [AddressType_Name]) VALUES (2, N'CUR', N'Current')
SET IDENTITY_INSERT [dbo].[AddressType] OFF
/****** Object:  UserDefinedTableType [dbo].[StudentType]    Script Date: 06/25/2016 01:38:47 ******/
CREATE TYPE [dbo].[StudentType] AS TABLE(
	[Student_Id] [int] NOT NULL,
	[First_Name] [nvarchar](100) NOT NULL,
	[Middle_Name] [nvarchar](100) NULL,
	[Last_Name] [nvarchar](100) NULL,
	[DOB] [datetime] NOT NULL,
	[Phone_Number] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Class] [int] NULL,
	[Gender] [int] NULL
)
GO
/****** Object:  Table [dbo].[Students]    Script Date: 06/25/2016 01:38:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Student_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[First_Name] [nvarchar](100) NOT NULL,
	[Middle_Name] [nvarchar](100) NULL,
	[Last_Name] [nvarchar](100) NULL,
	[DOB] [datetime] NOT NULL,
	[Phone_Number] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Class] [int] NULL,
	[Gender] [int] NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Student_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Students] ON
INSERT [dbo].[Students] ([Student_Id], [First_Name], [Middle_Name], [Last_Name], [DOB], [Phone_Number], [Email], [Class], [Gender]) VALUES (1, N'Girish', N'Kumar', N'Meena', CAST(0x0000783200000000 AS DateTime), N'074421133', N'gmeena@girish.com', 3, 1)
INSERT [dbo].[Students] ([Student_Id], [First_Name], [Middle_Name], [Last_Name], [DOB], [Phone_Number], [Email], [Class], [Gender]) VALUES (2, N'Harsh', N'Kumar', N'Verma', CAST(0x0000776600000000 AS DateTime), N'074421133', N'gmeena@girish.com', 2, 1)
INSERT [dbo].[Students] ([Student_Id], [First_Name], [Middle_Name], [Last_Name], [DOB], [Phone_Number], [Email], [Class], [Gender]) VALUES (3, N'NIlang', N'Goli', N'Nem', CAST(0x00007CFF00000000 AS DateTime), N'074421133', N'gmeena@girish.com', 4, 1)
INSERT [dbo].[Students] ([Student_Id], [First_Name], [Middle_Name], [Last_Name], [DOB], [Phone_Number], [Email], [Class], [Gender]) VALUES (4, N'wefwe', N'ravi', N'wefewf', CAST(0x000007BF00000000 AS DateTime), N'074421133', N'gmeena@girish.com', 5, 2)
INSERT [dbo].[Students] ([Student_Id], [First_Name], [Middle_Name], [Last_Name], [DOB], [Phone_Number], [Email], [Class], [Gender]) VALUES (5, N'nabi', N'ravi', N'kabi', CAST(0x000007BF00000000 AS DateTime), N'074421133', N'gmeena@girish.com', 3, 2)
INSERT [dbo].[Students] ([Student_Id], [First_Name], [Middle_Name], [Last_Name], [DOB], [Phone_Number], [Email], [Class], [Gender]) VALUES (6, N'nabi', N'nawa', N'hawa', CAST(0x000007BF00000000 AS DateTime), N'074421133', N'gmeena@girish.com', 5, 1)
SET IDENTITY_INSERT [dbo].[Students] OFF
/****** Object:  Table [dbo].[Role]    Script Date: 06/25/2016 01:38:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([RoleId], [Name], [IsAdmin]) VALUES (1, N'Admin', 1)
INSERT [dbo].[Role] ([RoleId], [Name], [IsAdmin]) VALUES (2, N'User', 0)
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[Relation]    Script Date: 06/25/2016 01:38:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relation](
	[RelationType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Relation_Code] [nvarchar](50) NOT NULL,
	[Relation_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Relation] PRIMARY KEY CLUSTERED 
(
	[RelationType_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Relation] ON
INSERT [dbo].[Relation] ([RelationType_Id], [Relation_Code], [Relation_Name]) VALUES (1, N'BRO', N'Brother')
INSERT [dbo].[Relation] ([RelationType_Id], [Relation_Code], [Relation_Name]) VALUES (2, N'FAT', N'Father')
INSERT [dbo].[Relation] ([RelationType_Id], [Relation_Code], [Relation_Name]) VALUES (3, N'MOT', N'Mother')
INSERT [dbo].[Relation] ([RelationType_Id], [Relation_Code], [Relation_Name]) VALUES (4, N'SIS', N'Sister')
INSERT [dbo].[Relation] ([RelationType_Id], [Relation_Code], [Relation_Name]) VALUES (5, N'AUN', N'Aunt')
INSERT [dbo].[Relation] ([RelationType_Id], [Relation_Code], [Relation_Name]) VALUES (6, N'UNC', N'Uncle')
SET IDENTITY_INSERT [dbo].[Relation] OFF
/****** Object:  StoredProcedure [dbo].[usp_GetStudents]    Script Date: 06/25/2016 01:38:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetStudents] --1,10
@page INT,
@count INT
AS
BEGIN

DECLARE @countStudent INT
SELECT @countStudent=COUNT(*) FROM Students;

WITH query AS 
(
	SELECT		ROW_NUMBER() OVER (ORDER BY Student_Id) AS Row_Num,dbo.GetName_From_FirstLastMiddle(Students.First_Name, Students.Middle_Name, Students.Last_Name) AS Student_Name, First_Name, Middle_Name, Last_Name, Convert(VARCHAR(20),Students.DOB,101) AS DOB, 
                Students.Phone_Number AS Phone, Students.Email, Gender.Vaule AS Gender, Class.Class_Name AS Class, Students.Student_Id, Class.Class_Id, Gender.Gender_Id 
	FROM        Students INNER JOIN
                Gender ON Students.Gender = Gender.Gender_Id INNER JOIN
				Class ON Students.Class = Class.Class_Id
)

SELECT TOP(@count) *,@countStudent AS StudentCount FROM  query WHERE Row_Num > (@page - 1) * @count

END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetStudentDetails]    Script Date: 06/25/2016 01:38:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetStudentDetails] --'nab',10
	@prefixText NVARCHAR,
	@count INT
AS
BEGIN
	
	SELECT TOP (@count) dbo.GetName_From_FirstLastMiddle(First_Name,Middle_Name,Last_Name) Name
	FROM Students WHERE First_Name LIKE '%' + @prefixText + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetRelationType]    Script Date: 06/25/2016 01:38:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetRelationType]
AS
BEGIN
SELECT [RelationType_Id]
      ,[Relation_Code]
      ,[Relation_Name]
  FROM Relation
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetClass]    Script Date: 06/25/2016 01:38:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetClass]
AS
BEGIN
SELECT [Class_Id]
      ,[Class_Code]
      ,[Class_Name]
  FROM Class
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetCity]    Script Date: 06/25/2016 01:38:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetCity]
AS
BEGIN
SELECT [City_Id]
      ,[City_Code]
      ,[City_Name]
  FROM City
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAddressType]    Script Date: 06/25/2016 01:38:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetAddressType]
AS
BEGIN
SELECT [AddressType_Id]
      ,[AddressType_Code]
      ,[AddressType_Name]
  FROM AddressType
END
GO
/****** Object:  Table [dbo].[Login]    Script Date: 06/25/2016 01:38:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[LoginId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleId] [int] NULL,
	[EmailAddress] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Login] ON
INSERT [dbo].[Login] ([LoginId], [UserName], [Password], [RoleId], [EmailAddress]) VALUES (1, N'girish24041984', N'girish123', 1, N'24041984girish@gmail.com')
INSERT [dbo].[Login] ([LoginId], [UserName], [Password], [RoleId], [EmailAddress]) VALUES (2, NULL, N'a', NULL, N'a@a.com')
INSERT [dbo].[Login] ([LoginId], [UserName], [Password], [RoleId], [EmailAddress]) VALUES (3, NULL, N'Password123', NULL, N'gmeena@gep.com')
SET IDENTITY_INSERT [dbo].[Login] OFF
/****** Object:  Table [dbo].[StudentFamily]    Script Date: 06/25/2016 01:38:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentFamily](
	[StudentFamily_Id] [int] IDENTITY(1,1) NOT NULL,
	[Student_Id] [bigint] NOT NULL,
	[RelationType_Id] [int] NOT NULL,
	[FamilyName] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Gender] [int] NOT NULL,
 CONSTRAINT [PK_StudentFamily] PRIMARY KEY CLUSTERED 
(
	[StudentFamily_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StudentFamily] ON
INSERT [dbo].[StudentFamily] ([StudentFamily_Id], [Student_Id], [RelationType_Id], [FamilyName], [Phone], [Gender]) VALUES (1, 1, 2, N'Sarita', N'786545', 1)
INSERT [dbo].[StudentFamily] ([StudentFamily_Id], [Student_Id], [RelationType_Id], [FamilyName], [Phone], [Gender]) VALUES (2, 2, 4, N'Manu', N'76666', 2)
INSERT [dbo].[StudentFamily] ([StudentFamily_Id], [Student_Id], [RelationType_Id], [FamilyName], [Phone], [Gender]) VALUES (3, 3, 5, N'Hanu', N'9999888', 2)
INSERT [dbo].[StudentFamily] ([StudentFamily_Id], [Student_Id], [RelationType_Id], [FamilyName], [Phone], [Gender]) VALUES (4, 4, 4, N'Chanu', N'5555', 1)
SET IDENTITY_INSERT [dbo].[StudentFamily] OFF
/****** Object:  Table [dbo].[StudentAddress]    Script Date: 06/25/2016 01:38:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAddress](
	[StudentAddress_Id] [int] IDENTITY(1,1) NOT NULL,
	[Student_Id] [bigint] NOT NULL,
	[AddressType_Id] [int] NOT NULL,
	[City_Id] [int] NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[ZipCode] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StudentAddress] PRIMARY KEY CLUSTERED 
(
	[StudentAddress_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StudentAddress] ON
INSERT [dbo].[StudentAddress] ([StudentAddress_Id], [Student_Id], [AddressType_Id], [City_Id], [Address], [ZipCode]) VALUES (1, 1, 1, 1, N'Hello This Is my first Address', N'786756')
INSERT [dbo].[StudentAddress] ([StudentAddress_Id], [Student_Id], [AddressType_Id], [City_Id], [Address], [ZipCode]) VALUES (2, 1, 2, 2, N'Hello 2', N'786756')
INSERT [dbo].[StudentAddress] ([StudentAddress_Id], [Student_Id], [AddressType_Id], [City_Id], [Address], [ZipCode]) VALUES (3, 2, 1, 3, N'Hello45 Address', N'786756')
INSERT [dbo].[StudentAddress] ([StudentAddress_Id], [Student_Id], [AddressType_Id], [City_Id], [Address], [ZipCode]) VALUES (4, 3, 1, 4, N'Address 5', N'786756')
SET IDENTITY_INSERT [dbo].[StudentAddress] OFF
/****** Object:  StoredProcedure [dbo].[usp_UpdateAddStudent]    Script Date: 06/25/2016 01:38:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_UpdateAddStudent]
@StudentType as StudentType ReadOnly
AS
BEGIN

	MERGE Students AS T
	USING @StudentType AS S
	ON (T.Student_Id = S.Student_Id)
	WHEN NOT MATCHED BY TARGET 
	THEN INSERT(First_Name,Middle_Name,Last_Name,DOB,Phone_Number,Email,Class,Gender) 
		VALUES (S.First_Name,S.Middle_Name,S.Last_Name,S.DOB,S.Phone_Number,S.Email,S.Class,S.Gender)
	WHEN MATCHED 
	THEN UPDATE SET T.First_Name = S.First_Name, T.Middle_Name = S.Middle_Name, T.Last_Name = S.Last_Name
					,T.DOB = S.DOB,T.Phone_Number = S.Phone_Number,T.Email = S.Email,T.Class = S.Class,
					T.Gender = S.Gender;

END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetStudentsFamily]    Script Date: 06/25/2016 01:38:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetStudentsFamily] --1,10
@page INT,
@count INT
AS
BEGIN

DECLARE @countFamily INT
SELECT @countFamily=COUNT(*) FROM StudentFamily;

WITH query AS 
(
	SELECT		ROW_NUMBER() OVER (ORDER BY F.StudentFamily_Id) AS Row_Num,
	dbo.GetName_From_FirstLastMiddle(S.First_Name, S.Middle_Name, S.Last_Name) AS Student_Name, 
    R.Relation_Name AS RelationType, F.FamilyName, F.Phone, G.Gender_Id, G.Vaule AS Gender,
    S.Student_Id, R.RelationType_Id
	FROM        StudentFamily AS F INNER JOIN
				Students S ON F.Student_Id = S.Student_Id INNER JOIN
                Relation R ON F.RelationType_Id = R.RelationType_Id INNER JOIN
                Gender G ON F.Gender = G.Gender_Id
)

SELECT TOP(@count) *,@countFamily AS CountFamily FROM  query WHERE Row_Num > (@page - 1) * @count

END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetStudentsAddress]    Script Date: 06/25/2016 01:38:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetStudentsAddress] --1,10
@page INT,
@count INT
AS
BEGIN

DECLARE @countAddress INT
SELECT @countAddress=COUNT(*) FROM StudentAddress;

WITH query AS 
(
	SELECT		ROW_NUMBER() OVER (ORDER BY StudentAddress_Id) AS Row_Num,
	dbo.GetName_From_FirstLastMiddle(Stu.First_Name, Stu.Middle_Name, Stu.Last_Name) AS Student_Name, 
    AddType.AddressType_Name AS AddressType, C.City_Name AS City, StuAdd.Address As [Address], StuAdd.ZipCode,
    Stu.Student_Id, StuAdd.StudentAddress_Id, AddType.AddressType_Id
    , C.City_Id
	FROM        StudentAddress AS StuAdd INNER JOIN
				Students Stu ON StuAdd.Student_Id = Stu.Student_Id INNER JOIN
                AddressType AddType ON StuAdd.AddressType_Id = AddType.AddressType_Id INNER JOIN
				City C ON StuAdd.City_Id = C.City_Id
)

SELECT TOP(@count) *,@countAddress AS CountAddress FROM  query WHERE Row_Num > (@page - 1) * @count

END
GO
/****** Object:  Default [DF_Role_IsAdmin]    Script Date: 06/25/2016 01:38:45 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_IsAdmin]  DEFAULT ((0)) FOR [IsAdmin]
GO
/****** Object:  ForeignKey [FK_Login_Role]    Script Date: 06/25/2016 01:38:45 ******/
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Role]
GO
/****** Object:  ForeignKey [FK_StudentAddress_AddressType]    Script Date: 06/25/2016 01:38:45 ******/
ALTER TABLE [dbo].[StudentAddress]  WITH CHECK ADD  CONSTRAINT [FK_StudentAddress_AddressType] FOREIGN KEY([AddressType_Id])
REFERENCES [dbo].[AddressType] ([AddressType_Id])
GO
ALTER TABLE [dbo].[StudentAddress] CHECK CONSTRAINT [FK_StudentAddress_AddressType]
GO
/****** Object:  ForeignKey [FK_StudentAddress_City]    Script Date: 06/25/2016 01:38:45 ******/
ALTER TABLE [dbo].[StudentAddress]  WITH CHECK ADD  CONSTRAINT [FK_StudentAddress_City] FOREIGN KEY([City_Id])
REFERENCES [dbo].[City] ([City_Id])
GO
ALTER TABLE [dbo].[StudentAddress] CHECK CONSTRAINT [FK_StudentAddress_City]
GO
/****** Object:  ForeignKey [FK_StudentAddress_Students]    Script Date: 06/25/2016 01:38:45 ******/
ALTER TABLE [dbo].[StudentAddress]  WITH CHECK ADD  CONSTRAINT [FK_StudentAddress_Students] FOREIGN KEY([Student_Id])
REFERENCES [dbo].[Students] ([Student_Id])
GO
ALTER TABLE [dbo].[StudentAddress] CHECK CONSTRAINT [FK_StudentAddress_Students]
GO
/****** Object:  ForeignKey [FK_StudentFamily_Gender]    Script Date: 06/25/2016 01:38:45 ******/
ALTER TABLE [dbo].[StudentFamily]  WITH CHECK ADD  CONSTRAINT [FK_StudentFamily_Gender] FOREIGN KEY([Gender])
REFERENCES [dbo].[Gender] ([Gender_Id])
GO
ALTER TABLE [dbo].[StudentFamily] CHECK CONSTRAINT [FK_StudentFamily_Gender]
GO
/****** Object:  ForeignKey [FK_StudentFamily_Relation]    Script Date: 06/25/2016 01:38:45 ******/
ALTER TABLE [dbo].[StudentFamily]  WITH CHECK ADD  CONSTRAINT [FK_StudentFamily_Relation] FOREIGN KEY([RelationType_Id])
REFERENCES [dbo].[Relation] ([RelationType_Id])
GO
ALTER TABLE [dbo].[StudentFamily] CHECK CONSTRAINT [FK_StudentFamily_Relation]
GO
/****** Object:  ForeignKey [FK_StudentFamily_Students]    Script Date: 06/25/2016 01:38:45 ******/
ALTER TABLE [dbo].[StudentFamily]  WITH CHECK ADD  CONSTRAINT [FK_StudentFamily_Students] FOREIGN KEY([Student_Id])
REFERENCES [dbo].[Students] ([Student_Id])
GO
ALTER TABLE [dbo].[StudentFamily] CHECK CONSTRAINT [FK_StudentFamily_Students]
GO
/****** Object:  ForeignKey [FK_Students_Students]    Script Date: 06/25/2016 01:38:45 ******/
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Students] FOREIGN KEY([Student_Id])
REFERENCES [dbo].[Students] ([Student_Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Students]
GO
