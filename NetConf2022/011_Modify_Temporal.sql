insert into Test10(ID,Value1,Value2)
	values (1,'A','A'),(2,'B','B'),(3,'C','C')
go

waitfor delay '00:00:10'
go

update Test10 set Value2 = Value1 + '_'+ Format( GETDATE(), 'yyyy/MM/dd HH:mm:ss', 'en-US' ) where ID = 2
go

waitfor delay '00:00:10'
go

delete Test10 where ID = 3
go


select * from Test10
go

select * from [dbo].[Test10_History]
go

