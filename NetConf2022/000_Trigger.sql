-- 測試資料表
CREATE TABLE Test0
	(ID int Primary key  
	,Value1 nvarchar(10)
	,Value2 nvarchar(30)
	,StartTime	datetime DEFAULT GETDATE()
	,EndTime	datetime)


CREATE TABLE Test0_History
	(ID int   
	,Value1 nvarchar(10)
	,Value2 nvarchar(30)
	,StartTime	datetime
	,EndTime	datetime)
GO

-- 建立 Trigger
CREATE TRIGGER Trig_Test ON Test0
AFTER UPDATE,DELETE
AS
BEGIN
	SET NOCOUNT ON ;

	INSERT INTO Test0_History( ID, Value1, Value2,StartTime,EndTime )
		SELECT ID, Value1, Value2,StartTime, GETDATE() FROM deleted ;
END
GO

-- 異動資料
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

-- 查詢結果
select * from Test0
go

select * from [dbo].[Test0_History]
go

-- 再異動一次
update Test0 set Value2 = Value1 + '_'+ Format( GETDATE(), 'yyyy/MM/dd HH:mm:ss', 'en-US' ) where ID = 2
go

select * from Test0
go

select * from [dbo].[Test0_History]
go
