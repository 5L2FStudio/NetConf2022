-- �إߥi��s���`�b��ƪ�
CREATE TABLE dbo.Test20
	(ID int Primary key  
	,Value1 nvarchar(10)
	,Value2 nvarchar(30))
	WITH(SYSTEM_VERSIONING = ON( HISTORY_TABLE = [dbo].[Test20_History] )
	, LEDGER = ON
	); 