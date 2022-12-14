-- �[�J���
insert into Test20(ID,Value1,Value2)
	values (1,'A','A'),(2,'B','B'),(3,'C','C')
go

waitfor delay '00:00:10'
go

-- �ק���
update Test20 set Value2 = Value1 + '_'+ FORMAT( GETDATE(), 'yyyy/MM/dd HH:mm:ss', 'en-US' ) where ID = 2
go

waitfor delay '00:00:10'
go

-- �R�����
delete Test20 where ID = 3
go

-- Ū����ƪ�
select * from Test20
go


select *
   ,[ledger_start_transaction_id]
   ,[ledger_end_transaction_id]
   ,[ledger_start_sequence_number]
   ,[ledger_end_sequence_number]
from Test20
go

-- Ū�����v��ƪ�
select * from [dbo].[Test20_History]
go

-- �b���ʤ@��
update Test20 set Value2 = Value1 + '_'+ FORMAT( GETDATE(), 'yyyy/MM/dd HH:mm:ss', 'en-US' ) where ID = 2
go

-- Ū����ƪ�
select *
   ,[ledger_start_transaction_id]
   ,[ledger_end_transaction_id]
   ,[ledger_start_sequence_number]
   ,[ledger_end_sequence_number]
from Test20
go

-- Ū�����v��ƪ�
select * from [dbo].[Test20_History]
go