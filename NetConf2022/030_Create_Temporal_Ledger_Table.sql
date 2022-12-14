-- 同時兼具時態表和總帳表的特性
CREATE TABLE dbo.Test30
	(ID int Primary key  
	,Value1 nvarchar(10)
	,Value2 nvarchar(30)
	,StartTime	datetime2 GENERATED ALWAYS AS ROW START NOT NULL	--開始時間
	,EndTime	datetime2 GENERATED ALWAYS AS ROW END	NOT NULL	--結束時間
	,PERIOD FOR SYSTEM_TIME (StartTime,EndTime)) 
	WITH(SYSTEM_VERSIONING = ON( HISTORY_TABLE = [dbo].[Test30_History] , DATA_CONSISTENCY_CHECK = ON )
	, LEDGER = ON
	); 

