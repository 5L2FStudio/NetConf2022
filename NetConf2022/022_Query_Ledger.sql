USE [DEMO]
GO

-- 查詢資料表
SELECT [ID], [Value1], [Value2], [ledger_start_transaction_id], [ledger_end_transaction_id], [ledger_start_sequence_number], [ledger_end_sequence_number]
  FROM [dbo].[Test20]

SELECT [ID], [Value1], [Value2], [ledger_start_transaction_id], [ledger_end_transaction_id], [ledger_start_sequence_number], [ledger_end_sequence_number]
  FROM [dbo].[Test20_History]

GO

-- 系統 DMV
SELECT * 
FROM sys.ledger_table_history

SELECT * 
FROM [dbo].[Test20_Ledger]
