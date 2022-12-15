CREATE TABLE dbo.Test10
	(ID int Primary key  
	,Value1 nvarchar(10)
	,Value2 nvarchar(30)
	,StartTime	datetime2 GENERATED ALWAYS AS ROW START HIDDEN NOT NULL	--�}�l�ɶ�
	,EndTime	datetime2 GENERATED ALWAYS AS ROW END	HIDDEN NOT NULL	--�����ɶ�
	,PERIOD FOR SYSTEM_TIME (StartTime,EndTime)) 
	WITH(SYSTEM_VERSIONING = ON( HISTORY_TABLE = [dbo].[Test10_History] , DATA_CONSISTENCY_CHECK = ON )
	); 

-- �n�� PK
-- �ɶ����i�H�[�J HIDDEN �����
-- �i�H���w������ Temporal Tablle �W��