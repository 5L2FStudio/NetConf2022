-- �إ߶ȭ����[���`�b��ƪ�
CREATE TABLE dbo.Test25
	(ID int Primary key  
	,Value1 nvarchar(10)
	,Value2 nvarchar(30))
	WITH( LEDGER = ON ( APPEND_ONLY = ON )
  --WITH(SYSTEM_VERSIONING = ON( HISTORY_TABLE = [dbo].[Test2_History] )
  --, LEDGER = ON
	); 
