-- ������
select 
	[ID], [Value1], [Value2], [StartTime], [EndTime]
	from Test10

select 
	[ID], [Value1], [Value2], [StartTime], [EndTime]
	from Test10_History
GO

-- �ק��ƪ� , �W�[���
alter table Test10 add Value3 money 
GO

-- ������
select 
	*
	from Test10

select 
	*
	from Test10_History
GO