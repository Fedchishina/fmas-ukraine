unit uImpParams;

{*******************************************************************************
*                                                                              *
* �������� ������ :                                                            *
*                                                                              *
*	uImpParams                                                                 *
*                                                                              *
* ���������� ������ :                                                          *
*                                                                              *
*	����������� ���������� ��� ����� ���������� �������.                       *
*                                                                              *
* Copyright  �  ��� 2005,  �����: ������� �.�                                 *
*                                                                              *
*******************************************************************************}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, DB,
  Halcn6db, uneTypes;

type

  TfmImpParams = class(TForm)

    dlgDBFFileName  : TOpenDialog;

    lblDocFileName  : TLabel;
    lblProvFileName : TLabel;

    edtDocFileName  : TcxButtonEdit;
    edtProvFileName : TcxButtonEdit;

    dstAllDoc       : THalcyonDataSet;
    dstAllProv      : THalcyonDataSet;

    btnOK           : TcxButton;
    btnCancel       : TcxButton;

    procedure btnOKClick                           (Sender: TObject);
    procedure FormShortCut                         (var Msg: TWMKey; var Handled: Boolean);

    procedure edtDocFileNamePropertiesButtonClick  (Sender: TObject; AButtonIndex: Integer);
    procedure edtProvFileNamePropertiesButtonClick (Sender: TObject; AButtonIndex: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uDataModul, uneUtils;

resourcestring

    sMsgErrFieldType         = '���� ����� ��-��������� � �������� �� ���������!'#13'���������� ��������� ������� � ��������� ������?';
    sMsgErrParamsNotFound    = '��������� ������� �����������!';
    sMsgErrFieldsNotFound    = '��������� �����-��������� ������ �����������!';

    sMsgDocFileNotFound      = '���������� ��������� ������ ������,'#13'��������� ����-�������� ���������� �� ������!';
    sMsgProvFileNotFound     = '���������� ��������� ������ ������,'#13'��������� ����-�������� �������� �� ������!';

    sMsgErrDocFieldType      = '���������� ��������� ������ ����������, ���������'#13'���� ����� ��-��������� � �������� �� ���������!';
    sMsgErrProvFieldType     = '���������� ��������� ������ ��������, ���������'#13'���� ����� ��-��������� � �������� �� ���������!';
    sMsgErrDocFieldNotFound  = '���������� ��������� ������ ������'#13'��������� �����-��������� ���������� �����������!';
    sMsgErrProvFieldNotFound = '���������� ��������� ������ ������'#13'��������� �����-��������� �������� �����������!';

{$R *.dfm}

//�������� ���� � DBF-����� ����������
procedure TfmImpParams.edtDocFileNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  dlgDBFFileName.Execute;
  edtDocFileName.Text := dlgDBFFileName.FileName;
end;

//�������� ���� � DBF-����� ��������
procedure TfmImpParams.edtProvFileNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  dlgDBFFileName.Execute;
  edtProvFileName.Text := dlgDBFFileName.FileName;
end;

//��������� �������� ������������ ���������� �������
procedure TfmImpParams.btnOKClick(Sender: TObject);
var
    ModRes       : Integer;
    DocResult    : TImportCheckError;
    ProvResult   : TImportCheckError;
    DocFileName  : TFileName;
    ProvFileName : TFileName;
begin
    DocFileName  := edtDocFileName.Text;
    ProvFileName := edtProvFileName.Text;

    //��������� ������� DBF-����� ����������
    if not FileExists( DocFileName )
    then begin
        ModalResult := mrNone;
        MessageBox( Handle, PChar( sMsgDocFileNotFound ), PChar( sMsgCaptionErr ), MB_OK or MB_ICONERROR );
        Exit;
    end;

    //��������� ������� DBF-����� ��������
    if not FileExists( ProvFileName )
    then begin
        ModalResult := mrNone;
        MessageBox( Handle, PChar( sMsgProvFileNotFound ), PChar( sMsgCaptionErr ), MB_OK or MB_ICONERROR );
        Exit;
    end;

    //��������� ������������ ����� �� ���������� � �������� ���������� ��������� �������
    DocResult  := CheckDBFStructure( dstAllDoc,  DocFileName,  cProcImpDocFields,  [ sMsgErrDocFieldNotFound,  sMsgErrDocFieldType  ], Handle );
    ProvResult := CheckDBFStructure( dstAllProv, ProvFileName, cProcImpProvFields, [ sMsgErrProvFieldNotFound, sMsgErrProvFieldType ], Handle );

    if not( ( DocResult = ectNone ) AND ( ProvResult = ectNone ) )
    then begin

        //��������� ������������ � �������������� ����� ����� ��-��������� � ��������
        if ( DocResult = ectFTIcompatible ) OR ( ProvResult = ectFTIcompatible )
        then begin
            ModRes := MessageBox( Handle, PChar( sMsgErrFieldType ), PChar( sMsgCaptionWrn ), MB_YESNO or MB_ICONWARNING );

            //��������(����������) ������(� ��������� ������)
            if ModRes = ID_NO
            then begin
                ModalResult := mrNone;
                Exit;
            end
            else begin
            end;

        end
        else begin
            ModalResult := mrNone;

            //��������� ������������ � ��������, �������������� ����������� �������
            if ( DocResult = ectFNUnknown ) OR ( ProvResult = ectFNUnknown )
            then
                MessageBox( Handle, PChar( sMsgErrFieldsNotFound ), PChar( sMsgCaptionErr ), MB_OK or MB_ICONERROR )
            else
                MessageBox( Handle, PChar( sMsgErrParamsNotFound ), PChar( sMsgCaptionErr ), MB_OK or MB_ICONERROR );

            Exit;
        end;

	end;

end;

//������������ ������� "�������" ������
procedure TfmImpParams.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  case Msg.CharCode of

    VK_F10    : begin
				  btnOK.Click;
				  Handled := True;
				end;

	VK_ESCAPE : begin
				  btnCancel.Click;
				  Handled := True;
                end;
  end;
end;

end.
