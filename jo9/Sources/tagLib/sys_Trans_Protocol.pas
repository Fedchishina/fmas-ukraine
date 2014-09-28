{******************************************************************************}
{*              ������������������ ������� ����� �������� � �������������    *}
{*                                    LFMAS                                   *}
{*              (c) �������� ������������ �����������, 2006                   *}
{******************************************************************************}

{                  ������ "���������������� ���������������� ����������        }
{                                              �������������: ��������� ������ }

unit sys_Trans_Protocol;

interface
uses pFIBDatabase, pFIBQuery, pFIBStoredProc, pFIBDataSet, Dialogs, FIBDataBase,
     Controls, Forms, IB_Externals, Classes, Registry, Windows, ExtCtrls,
     IBase, SysUtils;

type
 TTransProtocol = class
  private
   S_id_User    : integer;
   StoredProc   : TpFIBStoredProc;
   STransaction : TpFIBTransaction;

   procedure DatabaseAfterStartTransaction(Sender: TObject);
   procedure DatabaseBeforeEndTransaction(EndingTR: TFIBTransaction;
             Action: TTransactionAction; Force: Boolean);
  public
    { Public declarations }
 end;

function InitializeTransProtocol(DB : TpFIBDatabase; id_User : integer) : boolean;

implementation

var
 TransProtocol : TTransProtocol;

function InitializeTransProtocol(DB : TpFIBDatabase; id_User : integer) : boolean;
begin
 Result := False;

 try
  TransProtocol := TTransProtocol.Create;

  TransProtocol.S_id_User := id_User;

  TransProtocol.STransaction := TpFIBTransaction.Create(nil);
  TransProtocol.STransaction.DefaultDatabase := DB;

  DB.AfterStartTransaction := TransProtocol.DatabaseAfterStartTransaction;
  DB.BeforeEndTransaction  := TransProtocol.DatabaseBeforeEndTransaction;

  TransProtocol.StoredProc := TpFIBStoredProc.Create(nil);
  TransProtocol.StoredProc.Transaction := TransProtocol.STransaction;
 except
  ShowMessage('����������� ������ �������������� ���������� ������������ �������� ��������!'
  + #13 + #13 + '��''������ �� ������������!');
  Exit;
 end;

 Result := True;
end;

{ TTransProtocol }

procedure TTransProtocol.DatabaseAfterStartTransaction(Sender: TObject);
begin
 if (Sender as TpFIBTransaction) = STransaction then Exit;

 try
  StoredProc.Transaction.StartTransaction;

  StoredProc.ExecProcedure('SYS_TRANS_PROTOCOL_ADD', [(Sender as TpFIBTransaction).TransactionID, S_id_User]);

  StoredProc.Transaction.Commit;
 except
  StoredProc.Transaction.Rollback;
  ShowMessage('�������!' + #13 + #13 + '������� �������������� ���������� �����������!');
 end;
end;

procedure TTransProtocol.DatabaseBeforeEndTransaction(
  EndingTR: TFIBTransaction; Action: TTransactionAction; Force: Boolean);
var
 TransAction : byte;
begin
 if EndingTR = STransaction then Exit;

 case Action of
  TARollback          : TransAction := 1;
  TACommit            : TransAction := 2;
  TARollbackRetaining : TransAction := 3;
  TACommitRetaining   : TransAction := 4;
  else                  TransAction := 0;
 end;

 try
  StoredProc.Transaction.StartTransaction;

  StoredProc.ExecProcedure('SYS_TRANS_PROTOCOL_UPD', [EndingTR.TransactionID, TransAction]);

  StoredProc.Transaction.Commit;
 except
  StoredProc.Transaction.Rollback;
  ShowMessage('�������!' + #13 + #13 + '������� �������������� ���������� �����������!');
 end;
end;

end.
