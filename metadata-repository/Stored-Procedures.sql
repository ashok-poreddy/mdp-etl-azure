/****** Object:  StoredProcedure [dbo].[spGetDestinationConnection]    Script Date: 2/1/2023 10:39:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetDestinationConnection]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;	

	SELECT [Server] AS DestinationServer, [Database] AS DestinationDatabase, [Username] AS DestinationUsername, [Password] AS DestinationPassword
	FROM [dbo].[ETL Systems]
	WHERE [Zone] = 'Destination' AND [Type] = 'OnPrem SQL'
	
END
GO
/****** Object:  StoredProcedure [dbo].[spGetSourceConnection]    Script Date: 2/1/2023 10:39:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetSourceConnection]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;	

	SELECT [Server] AS SourceServer, [Database] AS SourceDatabase, [Username] AS SourceUsername, [Password] AS SourcePassword
	FROM [dbo].[ETL Systems]
	WHERE [Zone] = 'Source' AND [Type] = 'OnPrem SQL'
	
END
GO
/****** Object:  StoredProcedure [dbo].[spGetTableList]    Script Date: 2/1/2023 10:39:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetTableList]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;	

	SELECT [Table Schema] AS TableSchema, [Table Name] AS TableName, [Table Type] AS TableType
	FROM [dbo].[ETL Tables]
	WHERE [Enable] = 1
	
END
GO
/****** Object:  StoredProcedure [dbo].[spLoadTable]    Script Date: 2/1/2023 10:39:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spLoadTable]
	-- Add the parameters for the stored procedure here
	@TableSchema nvarchar(50)
	,@TableName nvarchar(200)
	,@TableType nvarchar(50)
	,@Pipeline int = 0
	,@Preview int = 1
	,@DEBUG int = 0	
AS
BEGIN
      --SET NOCOUNT ON added to prevent extra result sets from
      --interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @KeyCount int = 0
	DECLARE @ChecksumCount int = 0
	DECLARE @KeyColumnsJoin nvarchar(MAX) = ''
	DECLARE @ChecksumColumns nvarchar(MAX) = ''
	DECLARE @LSDColumn nvarchar(100) = ''	
	DECLARE @LSD datetime
	DECLARE @LSD2 nvarchar(25)
	DECLARE @SQLinsert nvarchar(MAX) = ''
	
	DECLARE @tmpWarnMessage nvarchar(250)

		BEGIN TRY

			SELECT @KeyCount = sum(IsKey), @ChecksumCount = sum(IsChecksum)
			FROM [dbo].[ETL Columns]
			WHERE [Table Name] = @TableName

			IF @KeyCount = 0
				BEGIN
					SET @tmpWarnMessage='### ERROR ###: No Primary Key fields  have been defined for table [' + @TableName + '] in [dbo].[ETL Columns].
					Make sure the table have been properly set up.'
					RAISERROR (@tmpWarnMessage,18,1)
					RETURN 
				END;

			IF @ChecksumCount = 0
				BEGIN
					SET @tmpWarnMessage='### ERROR ###: No Checksum fields have been defined for table [' + @TableName + '] in [dbo].[ETL Columns].
					Make sure the table have been properly set up.'
					RAISERROR (@tmpWarnMessage,18,1)
					RETURN 
				END;

			IF @TableType = 'Dim'
				BEGIN
					SET @SQLinsert	= 'SELECT ' + char(13)
							+ (SELECT STUFF((SELECT ',[' + T.[Column Name] + ']' + char(10)
									FROM [dbo].[ETL Columns] AS T
									INNER JOIN INFORMATION_SCHEMA.COLUMNS inf
										ON T.[Table Name] = inf.TABLE_NAME
										AND T.[Column Name] = inf.COLUMN_NAME
										AND inf.TABLE_SCHEMA = 'dbo'
									WHERE T.[Table Name] = @TableName
									ORDER BY inf.ORDINAL_POSITION 
									FOR XML PATH('')) ,1,1,'') AS KeyColumnWhere		
									)
							+ 'FROM [' + @TableSchema + '].[' + @TableName + ']' + char(13)
				END;

			IF @TableType = 'Fact'
				BEGIN

					SELECT @LSDColumn = [Column Name] 
					FROM [dbo].[ETL Columns]
					WHERE [Table Name] = @TableName AND [IsLSD] = 1

					SELECT @LSD = [Live Start Date]
					FROM [dbo].[ETL Data Period]
					
					SET @LSD2 = CONVERT(nvarchar(25), @LSD, 21)
									
					SET @SQLinsert	= 'SELECT ' + char(13)
							+ (SELECT STUFF((SELECT ',[' + T.[Column Name] + ']' + char(10)
									FROM [dbo].[ETL Columns] AS T
									INNER JOIN INFORMATION_SCHEMA.COLUMNS inf
										ON T.[Table Name] = inf.TABLE_NAME
										AND T.[Column Name] = inf.COLUMN_NAME
										AND inf.TABLE_SCHEMA = 'dbo'
									WHERE T.[Table Name] = @TableName
									ORDER BY inf.ORDINAL_POSITION 
									FOR XML PATH('')) ,1,1,'') AS KeyColumnWhere		
									)
							+ 'FROM [' + @TableSchema + '].[' + @TableName + '] ' + char(13)
							+ 'WHERE [' + @LSDColumn + '] >= ''' + @LSD2 + ''''

				END;

			IF @Preview = 1
				--SELECT (@SQLprepare + @SQLdelete + @SQLupdate + @SQLinsert)
				SELECT (@SQLinsert) AS 'SelectQuery'
			ELSE
				--EXECUTE SQL INSERT SCRIPT
				EXEC(@SQLinsert) 
		END TRY
		
		BEGIN CATCH
			/* Rollback */
			IF @@TRANCOUNT > 0
					ROLLBACK TRANSACTION
		END CATCH			
				
END
GO
/****** Object:  StoredProcedure [dbo].[spLogTableLoad]    Script Date: 2/1/2023 10:39:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spLogTableLoad]
	-- Add the parameters for the stored procedure here
	@TableSchema nvarchar(50),
	@TableName nvarchar(100),
	@TableType nvarchar(50),
	@StartTime datetime,
	@EndTime datetime,
	@Duration int,
	@RecordCount int,
	@Status nvarchar(50),
	@Message nvarchar(MAX),
	@DeltaType nvarchar(50),
	@SQLScript nvarchar(MAX),
	@TablePipeline nvarchar(250)
AS
BEGIN
      --SET NOCOUNT ON added to prevent extra result sets from
      --interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO [dbo].[ETL Log Tables] 
		([TableSchema],[TableName],[TableType],[StartTime],[EndTime],[Duration-Minutes],[RecordCount],[Status],[Message],[DeltaType],[SQLScript],[TablePipeline])  
	VALUES
	(
		@TableSchema,
		@TableName,
		@TableType,
		@StartTime,
		@EndTime,
		@Duration,
		@RecordCount,
		@Status,
		@Message,
		@DeltaType,
		@SQLScript,
		@TablePipeline
	)
				
END
GO
/****** Object:  StoredProcedure [dbo].[spTruncateTable]    Script Date: 2/1/2023 10:39:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spTruncateTable]
	-- Add the parameters for the stored procedure here
	@TableSchema NVARCHAR(50)
	,@TableName NVARCHAR(250) 	
	,@Debug int = 1
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @DeleteScript nvarchar(500);

	SET @DeleteScript = 'TRUNCATE TABLE ['+@TableSchema+'].['+@TableName+']'

	IF @Debug = 1
		SELECT @DeleteScript
	ELSE
		EXEC(@DeleteScript)
	
END
GO
