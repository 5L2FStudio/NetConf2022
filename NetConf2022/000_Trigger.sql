-- ���ո�ƪ�
CREATE TABLE Test0
	(ID int Primary key  
	,Value1 nvarchar(10)
	,Value2 nvarchar(20)
	,StartTime	datetime DEFAULT GETDATE()
	,EndTime	datetime)


CREATE TABLE Test0_History
	(ID int   
	,Value1 nvarchar(10)
	,Value2 nvarchar(20)
	,StartTime	datetime
	,EndTime	datetime)
GO

CREATE TRIGGER Trig_Test ON Test0
AFTER UPDATE,DELETE
AS
BEGIN
	SET NOCOUNT ON ;

	INSERT INTO Test0_History( ID, Value1, Value2,StartTime,EndTime )
		SELECT ID, Value1, Value2,StartTime, GETDATE() FROM deleted ;
END
GO

insert into Test0(ID,Value1,Value2)
	values (1,'A','A'),(2,'B','B'),(3,'C','C')
go

waitfor delay '00:00:10'
go

update Test0 set Value2 = Value1 + '_'+ Format( GETDATE(), 'yyyy/MM/dd HH:mm:ss', 'en-US' ) where ID = 2
go

waitfor delay '00:00:10'
go

delete Test0 where ID = 3
go


select * from Test0
go

select * from [dbo].[Test0_History]
go


alter table Test0 alter column Value2 nvarchar(30)

alter table Test0_History alter column Value2 nvarchar(30)

update Test0 set Value2 = Value1 + '_'+ Format( GETDATE(), 'yyyy/MM/dd HH:mm:ss', 'en-US' ) where ID = 2
go

select * from Test0
go

select * from [dbo].[Test0_History]
go
