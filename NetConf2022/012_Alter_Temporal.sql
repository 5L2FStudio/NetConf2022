-- 抓取資料
select 
	[ID], [Value1], [Value2], [StartTime], [EndTime]
	from Test10

select 
	[ID], [Value1], [Value2], [StartTime], [EndTime]
	from Test10_History
GO

-- 修改資料表 , 增加欄位
alter table Test10 add Value3 money 
GO

-- 抓取資料
select 
	*
	from Test10

select 
	*
	from Test10_History
GO