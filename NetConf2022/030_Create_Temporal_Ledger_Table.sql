-- �P�ɭݨ�ɺA��M�`�b���S��
CREATE TABLE dbo.Test30
	(ID int Primary key  
	,Value1 nvarchar(10)
	,Value2 nvarchar(30)
	,StartTime	datetime2 GENERATED ALWAYS AS ROW START NOT NULL	--�}�l�ɶ�
	,EndTime	datetime2 GENERATED ALWAYS AS ROW END	NOT NULL	--�����ɶ�
	,PERIOD FOR SYSTEM_TIME (StartTime,EndTime)) 
	WITH(SYSTEM_VERSIONING = ON( HISTORY_TABLE = [dbo].[Test30_History] , DATA_CONSISTENCY_CHECK = ON )
	, LEDGER = ON
	); 

