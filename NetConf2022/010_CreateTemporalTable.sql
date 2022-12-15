CREATE TABLE dbo.Test10
	(ID int Primary key  
	,Value1 nvarchar(10)
	,Value2 nvarchar(30)
	,StartTime	datetime2 GENERATED ALWAYS AS ROW START HIDDEN NOT NULL	--開始時間
	,EndTime	datetime2 GENERATED ALWAYS AS ROW END	HIDDEN NOT NULL	--結束時間
	,PERIOD FOR SYSTEM_TIME (StartTime,EndTime)) 
	WITH(SYSTEM_VERSIONING = ON( HISTORY_TABLE = [dbo].[Test10_History] , DATA_CONSISTENCY_CHECK = ON )
	); 

-- 要有 PK
-- 時間欄位可以加入 HIDDEN 不顯示
-- 可以指定對應的 Temporal Tablle 名稱