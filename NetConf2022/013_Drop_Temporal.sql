USE [DEMO]
GO

-- 關閉 SESYEM_VERSION
ALTER TABLE [dbo].[Test10] SET ( SYSTEM_VERSIONING = OFF  )
GO

-- 刪除 [Test10]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Test10]') AND type in (N'U'))
DROP TABLE [dbo].[Test10]
GO

-- 刪除 [Test10_Temporal]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Test10_History]') AND type in (N'U'))
DROP TABLE [dbo].[Test10_History]
GO
