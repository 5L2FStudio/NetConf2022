-- 加入資料
insert into Test25(ID,Value1,Value2)
	values (1,'A','A'),(2,'B','B'),(3,'C','C')
go

-- 修改資料
update Test25 set Value2 = Value1 + '_'+ FORMAT( GETDATE(), 'yyyy/MM/dd HH:mm:ss', 'en-US' ) where ID = 2
go

-- 刪除資料
delete Test25 where ID = 3
go

-- 讀取資料表
select * from Test25
go

select *
   ,[ledger_start_transaction_id]
--   ,[ledger_end_transaction_id]
   ,[ledger_start_sequence_number]
--   ,[ledger_end_sequence_number]
from Test25
go

insert into Test25(ID,Value1,Value2)
	values (4,'D','D'),(5,'E','E')
go


select *
   ,[ledger_start_transaction_id]
   ,[ledger_start_sequence_number]
from Test25
go
-- 查詢 Ledger View
SELECT * 
FROM [dbo].[Test25_Ledger]