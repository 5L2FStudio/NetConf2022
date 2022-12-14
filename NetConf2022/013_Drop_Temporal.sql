USE [DEMO]
GO

-- Ãö³¬ SESYEM_VERSION
ALTER TABLE [dbo].[Test10] SET ( SYSTEM_VERSIONING = OFF  )
GO

-- §R°£ [Test10]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Test10]') AND type in (N'U'))
DROP TABLE [dbo].[Test10]
GO

-- §R°£ [Test10_Temporal]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Test10]') AND type in (N'U'))
DROP TABLE [dbo].[Test10_Temporal]
GO
