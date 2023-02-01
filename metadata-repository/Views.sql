/****** Object:  View [dbo].[vLogFailureTables]    Script Date: 2/1/2023 10:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[vLogFailureTables]
as
SELECT * FROM [dbo].[ETL Log Tables] 
WHERE [Status] = 'Failed'
ORDER BY ID DESC offset 0 rows
GO
/****** Object:  View [dbo].[vLogSuccessTables]    Script Date: 2/1/2023 10:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[vLogSuccessTables]
as
SELECT * FROM [dbo].[ETL Log Tables] 
WHERE [Status] = 'Success'
ORDER BY ID DESC offset 0 rows
GO
