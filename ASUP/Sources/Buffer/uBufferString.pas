unit uBufferString;

interface

resourcestring
    sqlGetIDTransaction = 'SELECT ID_TRANSACTION FROM GET_ID_TRANSACTION';
    sqlGetIDPBKey = 'SELECT Id_PbKey FROM Buffer_Get_Id_PBKey';
    sqlAddBufTran = 'INSERT INTO BUFF_TRAN(ID_TRANSACTION, ID_PBKEY, DATE_IN, ' +
		'BUFFER_NAME, IB_BUFFER_NAME, Id_System) VALUES(:Id_Transaction, :Id_PBKey, '+
        'CURRENT_DATE, :Buffer, :IB_Buffer, :Id_System)';
    sqlGetTranData = 'SELECT * FROM BUFF_GET_TRANSACTION_RECORDS(:Id_Transaction)';
    sqlDelIBBuffer = 'DELETE FROM :IB_Buffer_Name WHERE Id_PBKey = :Id_PBKey';
    sqlDelBufTran = 'EXECUTE PROCEDURE BUFF_TRANSACTION_RECORDS_DELETE(:Id_Transaction)';
    sqlGetAllTran= 'SELECT * FROM BUFF_TRAN WHERE Id_System = :Id_System';
    sqlDelRecBufTran = 'DELETE FROM BUFF_TRAN WHERE Id_Transaction = ' +
                       ':Id_Transaction AND Id_PBKey = :Id_PBKey';
    sqlGetData = 'SELECT * FROM :IB_Buffer WHERE Id_PBKey = :Id_PBKey';

    errBufTransactionActive = 'BufTran.Start: ���������� ������ ��� ������';
    errARBufTransactionNotActive = 'BufTran.AddRecord: ���������� ������ �� ��������';
    errRBBufTransactionNotActive = 'BufTran.Rollback: ���������� ������ �� ��������';
    errCBufTransactionNotActive = 'BufTran.Commit: ���������� ������ �� ��������';
    errRollbackAll = 'BufTran.RollbackAll: ϳ� ��� ������ ������� ������ ����� � dbf ������� ��������: ';

implementation

end.
