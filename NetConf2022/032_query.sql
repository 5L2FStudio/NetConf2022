select 
[ID], [Value1], [Value2], [StartTime], [EndTime], [ledger_start_transaction_id], [ledger_end_transaction_id], [ledger_start_sequence_number], [ledger_end_sequence_number]
from Test30

select 
[ID], [Value1], [Value2], [StartTime], [EndTime], [ledger_start_transaction_id], [ledger_end_transaction_id], [ledger_start_sequence_number], [ledger_end_sequence_number]
from Test30_History

-- ¬d¸ß Ledger View
SELECT * 
FROM [dbo].[Test30_Ledger]