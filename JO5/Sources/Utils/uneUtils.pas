unit uneUtils;

{*******************************************************************************
*                                                                              *
* �������� ������ :                                                            *
*                                                                              *
*	uneUtils                                                                   *
*                                                                              *
* ���������� ������ :                                                          *
*                                                                              *
*	���������������� �������� ������������ � ���������� �������� � �������.    *
*                                                                              *
* Copyright  �  ��� 2005,  �����: ������� �.�                                 *
*                                                                              *
*******************************************************************************}

interface

uses
	SysUtils, Classes, Windows, Forms, Dialogs, Controls, StdCtrls, IniFiles, Variants, cxGridDBTableView,
    cxGridDBDataDefinitions, pFIBDataSet, Halcn6db, DB, DateUtils, uneTypes;

	procedure SetFormPos        ( const aOwner: TForm; var aForm: TForm );
	procedure SetFirstZero      ( var aDigit: String );
//    procedure GetDateInv        ( aDataSet: TpFIBDataSet; const aDateBeg, aDateEnd: TDate; const aDateCount: TCheckedBoxes );
//    procedure GetSetUpInfo      ( aDataSet: TpFIBDataSet; const aSetUpInfo: PSetUp );
	procedure LogException      ( const aFileName: TFileName );
	procedure FreeAndNilPTR     ( var aPointer: Pointer; const aPTRIsUntyped: Boolean = False );

//    function GetValue           ( const aStruct: TSection; const aValueName: String ): Variant;
	function SortArray          ( var aArray: TIntArray ): Boolean;
	function ReadRecId          ( const aDataContr: TcxGridDBDataController; const aKeyColumnIndex, aMultiColumnIndex: Integer; const aSelectedRecCount: Integer ): TIntArray;
	function WriteRecId         ( const aDataContr: TcxGridDBDataController; const aMultiColumnIndex: Integer; const aIdCheckedRec: TIntArray ): Boolean;
//    function GetSpIndex         ( const aOwner: TForm; const aMenuTag: Integer): Integer;
//    function IsDateValid        ( const aDateBeg, aDateEnd: String; const aDateCount: TCheckedBoxes ): Boolean ;
//    function ReadIniFile        ( var aIniFile: TIniFileInfo ): Boolean;
	function MessageDlgRus      ( const aCaption: TCaption; const aMsg: String; const aDlgType: TMsgDlgType; const aButtons: TMsgDlgButtons ): word;
	function SelectRecords      ( var aDBTableView: TcxGridDBTableView; const aColumnName: TcxGridDBColumn; const aSelectionKind: TSelectionType ): Integer;
	function GetSelRecCount     ( const aSelRecCount, aTotalRecCont: Integer ): TCheckedRecCount;
	function CheckDBFStructure  ( aSource: THalcyonDataSet; const aDBFFileName: String; aFields: array of TFieldRec; aErrorMsg: array of String; aHWND: HWND ): TImportCheckError;
	function GetCheckedRecCount ( const aDataContr: TcxGridDBDataController; const aMultiColumnIndex: Integer ): Integer;

	function GetMonthName(d : TDateTime) : shortstring;

implementation

procedure LogException ( const aFileName: TFileName );

{*******************************************************************************
*                                                                              *
* �������� ��������� :                                                         *
*                                                                              *
*	LogException                                                               *
*                                                                              *
* ���������� ��������� :                                                       *
*                                                                              *
* ��������� ������������� ������, ����������� � ����������                     *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aFileName - ������ ���� � ����� ���������.                              *
*                                                                              *
*******************************************************************************}

var
    m       : word;
    Buf     : array[0..511] of char;
    FStream : TFileStream;
begin

    if FileExists( aFileName )
    then
        m := fmOpenReadWrite
    else
        m := fmCreate;

    FStream := TFileStream.Create( aFileName, m );
    FStream.Seek( 0, soFromEnd );

    StrPCopy( Buf, DateTimeToStr(Now)+ '.   ' );
    ExceptionErrorMessage( ExceptObject, ExceptAddr, @Buf[ StrLen(Buf) ], SizeOf(Buf) - StrLen(Buf) );
    StrCat( Buf, #13#10 );

    FStream.WriteBuffer( Buf, StrLen(Buf) );
    FStream.Free;

end;  //End of procedure LogException

//function ReadIniFile( var aIniFile: TIniFileInfo ): Boolean;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	ReadIniFile                                                                *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
*	����������� ����������� ���������� � ����� ������ ����������� ����������   *
* �������� ���������� �� INI - ����� �� ������ �����.                         *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aIniFile - ������, ���������� ���������� � ���������� ����� ���������.  *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*      aIniFile.                                                               *
*                                                                              *
* RESULT: Boolean.                                                             *
*                                                                              *
*	���� ���������� ������������, ��������� ������������ �������� - ������,    *
* ���� ��� - ����.                                                             *
*                                                                              *
*******************************************************************************}

{var
    i, j     : Integer;
    IniFile  : TIniFile;
    FileName : String;

begin

  try

    Result   := False;
    IniFile  := nil;

    //�������� ���� + ���������� ��� ����� ���������

	FileName := ExtractFilePath( Application.ExeName ) + cINI_FILE_NAME;

    //��������� ������������� ����� ���������

	if FileExists( FileName )
    then begin

      //��������� �������� ���������� � ������ ���������

      IniFile := TIniFile.Create( FileName );

      //��������� ��������� �� ����� ������������

      with aIniFile
      do

        for i := Low( cSECTIONS.Keys ) to High( cSECTIONS.Keys ) do
        begin
          Sections.Keys[i].Name  := cSECTIONS.Keys[i].Name;
          Sections.Keys[i].Value := IniFile.ReadString( cSECTIONS.Name, cSECTIONS.Keys[i].Name, '' );
        end;

      //����������� �������

      IniFile.Free;
      Result := True;

    end
    else
      MessageDlgRus( '������', '���� ��������� �� ������', mtWarning, [mbOK] );

  except

    on EIniFileException do
    begin
      Result := False;
      MessageDlg( '������ ��������� INI-�����', mtError, [mbOK], 0 );
    end;

  end;

end;} //End of function ReadIniFile

procedure SetFormPos( const aOwner: TForm; var aForm: TForm );

{*******************************************************************************
*                                                                              *
* �������� ��������� :                                                         *
*                                                                              *
*	SetFormPos                                                                 *
*                                                                              *
* ���������� ��������� :                                                       *
*                                                                              *
*	��������� �������� ����� �� ������ ������������ ������������ �����.        *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*       aOwner - ������������ �����.                                           *
*       aForm  - �������� �����.                                               *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*       aForm.                                                                 *
*                                                                              *
* RESULT: ����� ��������� �������� ����� ������������ ������������.            *
*                                                                              *
*******************************************************************************}

begin
  aForm.Left := aOwner.Left + Round( ( aOwner.Width - aForm.Width )/2 );
  aForm.Top  := aOwner.Top + Round( ( aOwner.Height - aForm.Height )/2 );
end; //End of procedure SetFormPos

//function GetValue( const aStruct: TSection; const aValueName: String ): Variant;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	GetValue                                                                   *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
*	���������� �������� �������� ������� �������� ���������.                   *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aStruct    - ���������.                                                 *
*      aValueName - ��� �������� ���������.                                    *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
* Result : Variant.                                                            *
*                                                                              *
* RESULT: �������� �������� �������.                                           *
*                                                                              *
*******************************************************************************}

{var
   i : Integer;

begin

  Result := Null;

  for i := Low( aStruct.Keys ) to High( aStruct.Keys ) do

    if aStruct.Keys[i].Name = aValueName
    then begin
      Result := aStruct.Keys[i].Value;
      Break;
    end;

end;} //End of function GetValue

function MessageDlgRus( const aCaption: TCaption; const aMsg: String; const aDlgType: TMsgDlgType; const aButtons: TMsgDlgButtons ): word;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	MessageDlgRus                                                              *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
*	���������� ��������� �������.                                              *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aCaption - ��������� �������.                                           *
*      aMsg     - ��������� �������.                                           *
*      aDlgType - ��� �������.                                                 *
*      aButtons - ����� ������ ��� �������.                                    *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*      Result : Word.                                                          *
*                                                                              *
* RESULT: ���������� ��������� ���������� ������� �������������.               *
*                                                                              *
*******************************************************************************}

var
   i       : Integer;
   MsgForm : TForm;

begin

  if aButtons <> []
  then begin

    MsgForm := CreateMessageDialog( aMsg, aDlgType, aButtons );
    MsgForm.Caption := aCaption;

    for i := 0 to ( MsgForm.ComponentCount - 1 ) do
    begin

      if MsgForm.Components[i] is TButton
      then begin

        if UpperCase( TButton( MsgForm.Components[i] ).Caption ) = 'OK'
        then
          TButton( MsgForm.Components[i] ).Caption := '�������';

        if UpperCase( TButton( MsgForm.Components[i] ).Caption ) = 'CANCEL'
        then
          TButton( MsgForm.Components[i] ).Caption := '��������';

        if UpperCase( TButton( MsgForm.Components[i] ).Caption ) = '&YES'
        then
          TButton( MsgForm.Components[i] ).Caption := '��';

        if UpperCase( TButton( MsgForm.Components[i] ).Caption ) = '&NO'
        then
          TButton( MsgForm.Components[i] ).Caption := '���';

        if UpperCase( TButton( MsgForm.Components[i] ).Caption ) = '&ABORT'
        then
          TButton( MsgForm.Components[i] ).Caption := '������';

        if UpperCase( TButton( MsgForm.Components[i] ).Caption ) = '&RETRY'
        then
          TButton( MsgForm.Components[i] ).Caption := '������';

        if UpperCase( TButton( MsgForm.Components[i] ).Caption ) = '&IGNORE'
        then
          TButton( MsgForm.Components[i] ).Caption := '������������';

        if UpperCase( TButton( MsgForm.Components[i] ).Caption ) = '&ALL'
        then
          TButton( MsgForm.Components[i] ).Caption := '��';

        if UpperCase( TButton( MsgForm.Components[i] ).Caption ) = '&HELP'
        then
          TButton( MsgForm.Components[i] ).Caption := '������';

        if UpperCase( TButton( MsgForm.Components[i] ).Caption ) = 'N&O TO ALL'
        then
          TButton( MsgForm.Components[i] ).Caption := '��� ��� ����';

        if UpperCase( TButton( MsgForm.Components[i] ).Caption ) = 'YES TO &ALL'
        then
          TButton( MsgForm.Components[i] ).Caption := '�� ��� ����';

      end;

    end;

    Result := MsgForm.ShowModal;
    MsgForm.Free;

  end
  else begin
    Result := 0;
  end;

end; //End of Funtion MessageDlgRus

function SelectRecords( var aDBTableView: TcxGridDBTableView; const aColumnName: TcxGridDBColumn; const aSelectionKind: TSelectionType  ): Integer;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	SelectRecords                                                              *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
*	���������� ���������� ���������� ������������� �������, � ������ ���� ����-*
* ������ ��� ������ � ������ ������������.                                     *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aColumnName    - ��� �������, ������������ ���������������� ������������*
*      aDBTableView   - �������, ���������� ������������� �������.             *
*      aSelectionKind - ��� ������������.                                      *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*      Result : Integer.                                                       *
*                                                                              *
* RESULT: ���������� ���������� �������.                                       *
*                                                                              *
*******************************************************************************}

var
    i         : Integer;
    CellValue : Variant;

begin

  Result := 0;

  case aSelectionKind of

    stpSelectAll  :  begin
                       aDBTableView.BeginUpdate;

                       for i := 0 to ( aDBTableView.DataController.GetRecordCount - 1 ) do
                       begin
                         aDBTableView.DataController.Values[ i, aColumnName.Index ] := True;
                         Inc( Result );
                       end;

                       aDBTableView.EndUpdate;
                     end;

    stpUnSelectAll:  begin
                       aDBTableView.BeginUpdate;

                       for i := 0 to ( aDBTableView.DataController.GetRecordCount - 1 ) do
                       begin
                         aDBTableView.DataController.Values[ i, aColumnName.Index ] := False;
                       end;

                       aDBTableView.EndUpdate;
                     end;

    stpInvert     :  begin
                       aDBTableView.BeginUpdate;

                       for i := 0 to ( aDBTableView.DataController.GetRecordCount - 1 ) do
                       begin

                         CellValue := aDBTableView.DataController.Values[ i, aColumnName.Index ];

                         if CellValue = Null
                         then
                             CellValue := False
                         else
                             CellValue := Boolean( CellValue );

                         if CellValue
                         then begin
                           aDBTableView.DataController.Values[ i, aColumnName.Index ] := False;
                         end
                         else begin
                           aDBTableView.DataController.Values[ i, aColumnName.Index ] := True;
                           Inc( Result );
                         end;

                       end;

                       aDBTableView.EndUpdate;
                     end;

  end;

end; //End of function SelectRecords

function GetSpIndex( const aOwner: TForm; const aMenuTag: Integer): Integer;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	GetSpIndex                                                                 *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
*	���������� ������ �������� ����� �� ������ �������� ���� ������������ �����*
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aOwner   - ������������ �����.                                          *
*      aMenuTag - �������� �������� Tag ������ ����.                           *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*      Result : Integer.                                                       *
*                                                                              *
* RESULT: ������ �������� �����.���� �������� ����� �� �������, ������� ��� -  *
*   ������� -1. (����: �������� Tag ������ ����, ��� ����� �� ������� ��������*
*   ��������� ��������� ����, ������ ���� ����� �������� �������� Tag ������,  *
*   �� �������� ������� ������ ��������� )                                    *
*                                                                              *
*******************************************************************************}

var
    i: Integer;

begin

   Result := -1;

    for i := 0 to ( aOwner.MDIChildCount - 1 ) do
    begin

        if aOwner.MDIChildren[i].Tag = aMenuTag
        then begin
            Result := i;
            Break;
        end

    end;

end; // End of function GetSpIndex

function ReadRecId( const aDataContr: TcxGridDBDataController; const aKeyColumnIndex, aMultiColumnIndex: Integer; const aSelectedRecCount: Integer ): TIntArray;

{********************************************************************************
*                                                                               *
* �������� ������� :                                                            *
*                                                                               *
*	ReadRecId                                                                   *
*                                                                               *
* ���������� ������� :                                                          *
*                                                                               *
*	���������� �������������� ���������� ������� � ������.                      *
*                                                                               *
* IN:                                                                           *
*                                                                               *
*       aDataContr        - ���� ���������� �����.                              *
*       aKeyColumnIndex   - ������ �������, ����������� �������� ��������� ���� *
*       aMultiColumnIndex - ������ ������� ��� ������������.                    *
*       aSelectedRecCount - ���������� ���������� �������.                      *
*                                                                               *
* OUT:                                                                          *
*                                                                               *
*       Result : TIntArray.                                                     *
*                                                                               *
* RESULT: ������ ��������������� ���������� �������.                            *
*                                                                               *
********************************************************************************}

var
    i, j      : Integer;
    CellValue : Variant;

begin

    j := 0;
    SetLength( Result, aSelectedRecCount );

    for i := 0 to ( aDataContr.RecordCount - 1 ) do
    begin
      CellValue := aDataContr.Values[ i, aMultiColumnIndex ];

      if CellValue = True
      then begin
        Result[j] := Integer( aDataContr.Values[ i, aKeyColumnIndex ] );
        Inc(j);
      end;

    end;

end; //End of function ReadRecId

function WriteRecId( const aDataContr: TcxGridDBDataController; const aMultiColumnIndex: Integer; const aIdCheckedRec: TIntArray ): Boolean;

{********************************************************************************
*                                                                               *
* �������� ������� :                                                            *
*                                                                               *
*	WriteRecId                                                                  *
*                                                                               *
* ���������� ������� :                                                          *
*                                                                               *
*	��������������� "�������" ��� ���������� ����� �������.                     *
*                                                                               *
* IN:                                                                           *
*                                                                               *
*       aDataContr        - ���� ���������� �����.                              *
*       aMultiColumnIndex - ������ ������� ��� ������������.                    *
*       aIdCheckedRec     - ������ ��������������� ���������� �������.          *
*                                                                               *
* OUT:                                                                          *
*                                                                               *
*       Result : Boolean.                                                       *
*                                                                               *
* RESULT: ������� ���������� True, ���� ��� ���� ���������� ������� "�������"   *
*           ������� �������������, ���� �� ���, ����� - False.                  *
*                                                                               *
********************************************************************************}

var
    i           : Integer;
    RecordIndex : Integer;

begin

    Result := True;

    for i := 0 to High( aIdCheckedRec ) do
    begin
       RecordIndex := aDataContr.FindRecordIndexByKey( aIdCheckedRec[i] );

       if RecordIndex <> -1
       then
           aDataContr.Values[ RecordIndex, aMultiColumnIndex ] := True
       else
         Result := False;

    end;

end; //End of function WriteRecId

function GetSelRecCount( const aSelRecCount, aTotalRecCont: Integer ): TCheckedRecCount;

{********************************************************************************
*                                                                               *
* �������� ������� :                                                            *
*                                                                               *
*	GetSelRecCount                                                              *
*                                                                               *
* ���������� ������� :                                                          *
*                                                                               *
*	���������� �������� ������������� ����, ������������ ���-�� ���������� ����-*
*   ��� ������������ ������ ���-�� ������� � ������ ������.                     *
*                                                                               *
* IN:                                                                           *
*                                                                               *
*       aSelRecCount  - ���-�� ���������� �������.                              *
*       aTotalRecCont - ���-�� ������� � ������ ������.                         *
*                                                                               *
* OUT:                                                                          *
*                                                                               *
*       Result : TCheckedRecCount.                                              *
*                                                                               *
* RESULT: �������� ������������� ���� TCheckedRecCount.                         *
*                                                                               *
********************************************************************************}

begin

  if aSelRecCount = 0
  then
    Result := crcNone
  else
    if aSelRecCount = aTotalRecCont
    then
      Result := crcAll
    else
      Result := crcSome;

end; //End of function GetSelRecCount

function GetCheckedRecCount( const aDataContr: TcxGridDBDataController; const aMultiColumnIndex: Integer ): Integer;

{********************************************************************************
*                                                                               *
* �������� ������� :                                                            *
*                                                                               *
*	GetCheckedRecCount                                                          *
*                                                                               *
* ���������� ������� :                                                          *
*                                                                               *
*	������������� ���-�� ���������� �������.                                    *
*                                                                               *
* IN:                                                                           *
*                                                                               *
*       aDataContr        - ���� ���������� �����.                              *
*       aMultiColumnIndex - ������ ������� ��� ������������.                    *
*                                                                               *
* OUT:                                                                          *
*                                                                               *
*       Result : Integer.                                                       *
*                                                                               *
* RESULT: ���������� ���-�� ���������� �������.                                 *
*                                                                               *
********************************************************************************}

var
   i : Integer;

begin

  Result := 0;

  for i := 0 to ( aDataContr.RecordCount - 1 ) do
  begin
    if aDataContr.Values[ i, aMultiColumnIndex ] = True
    then
      Inc( Result );
  end;

end; //End of function GetCheckedRecCount

//procedure GetDateInv( aDataSet: TpFIBDataSet; const aDateBeg, aDateEnd: TDate; const aDateCount: TCheckedBoxes );

{*******************************************************************************
*                                                                              *
* �������� ��������� :                                                         *
*                                                                              *
*	GetDateInv                                                                 *
*                                                                              *
* ���������� ��������� :                                                       *
*                                                                              *
*   ��������� ���������� ��������� ��� ����������� ��������� ���������, ������ *
*   ��������� ���������� ��������� �������.                                    *
*	��������� ������������ �������� ��� ������ � ����� ��������� ������� �,    *
*   ���� �������� �� ����� ������, ����� �������� �� �� ������� ����.          *
*                                                                              *
* IN:                                                                          *
*       aDataSet   - ����� ������                                              *
*       aDateBeg   - ���� ������ ��������� �������.                            *
*       aDateEnd   - ���� ����� ��������� �������.                             *
*       aDateCount - ���-�� ������������ ���.                                  *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*       aDataSet                                                               *
*                                                                              *
* RESULT: ����� �������� ��� ����������� ��������� ���������.                  *
*                                                                              *
*******************************************************************************}

{begin

  case aDateCount of

    cbNone : begin
               aDataSet.Close;
               aDataSet.SQLs.SelectSQL.Clear;
               aDataSet.SQLs.SelectSQL.Text := 'SELECT * FROM NDS_DT_DATES_SEL( Null, Null )ORDER BY DATE_INVOICE DESC';
               aDataSet.Open;
             end;

    cbFrom : begin
               aDataSet.Close;
               aDataSet.SQLs.SelectSQL.Clear;
               aDataSet.SQLs.SelectSQL.Text := 'SELECT * FROM NDS_DT_DATES_SEL(''' + DateToStr( aDateBeg ) + ''',Null )ORDER BY DATE_INVOICE DESC';
               aDataSet.Open;
             end;

    cbTill : begin
               aDataSet.Close;
               aDataSet.SQLs.SelectSQL.Clear;
               aDataSet.SQLs.SelectSQL.Text := 'SELECT * FROM NDS_DT_DATES_SEL( Null,''' + DateToStr( aDateEnd ) + ''')ORDER BY DATE_INVOICE DESC';
               aDataSet.Open;
             end;

    cbBoth : begin
               aDataSet.Close;
               aDataSet.SQLs.SelectSQL.Clear;
               aDataSet.SQLs.SelectSQL.Text := 'SELECT * FROM NDS_DT_DATES_SEL(''' + DateToStr( aDateBeg ) + ''',''' + DateToStr( aDateEnd ) + ''')ORDER BY DATE_INVOICE DESC';
               aDataSet.Open;
             end;
  end;

end;} //End of procedure GetDateInv

//function IsDateValid( const aDateBeg, aDateEnd: String; const aDateCount: TCheckedBoxes ): Boolean ;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	IsDateValid                                                                *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
*	��������� ������������ �������� ��� ������ � ����� ��������� �������.      *
*                                                                              *
* IN:                                                                          *
*       aDateBeg   - ���� ������ ��������� �������.                            *
*       aDateEnd   - ���� ����� ��������� �������.                             *
*       aDateCount - ���-�� ������������ ���.                                  *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*       Result                                                                 *
*                                                                              *
* RESULT: Boolean.                                                             *
*                                                                              *
*******************************************************************************}

{begin

  case aDateCount of

    cbNone : begin
               Result := True;
             end;

    cbFrom : begin

               if Trim( aDateBeg ) = ''
               then
                 Result := False
               else
                 Result := True;

             end;

    cbTill : begin

               if Trim( aDateEnd ) = ''
               then
                 Result := False
               else
                 Result := True;

             end;

    cbBoth : begin

               if ( ( Trim( aDateBeg ) <> '' ) and ( Trim( aDateEnd ) <> '' ) ) AND ( StrToDate( aDateBeg ) <= StrToDate( aDateEnd ) )
               then
                 Result := True
               else
                 Result := False;

             end;
  end;

end;  //End of function IsDateValid

procedure GetSetUpInfo( aDataSet: TpFIBDataSet; const aSetUpInfo: PSetUp );}

{*******************************************************************************
*                                                                              *
* �������� ��������� :                                                         *
*                                                                              *
*	GetSetUpInfo                                                               *
*                                                                              *
* ���������� ��������� :                                                       *
*                                                                              *
*	���������� �������� ��������� ��������.                                    *
*                                                                              *
* IN:                                                                          *
*       aDataSet   - ����� ������.                                             *
*       aSetUpInfo - �������� �� ��������� ���� "���������� ������".           *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*       aSetUpInfo                                                             *
*                                                                              *
* RESULT: �������� �� ��, ��� �������� �� ��������� aSetUpInfo �������� ���    *
*         ���������, �������� ����� ��������� ����������, � �������� ������,   *
*         ������� �������� �� ��� ��������� �������� �������.                 *
*                                                                              *
*******************************************************************************}

{begin

  aDataSet.Close;
  aDataSet.SQLs.SelectSQL.Clear;

    case Ord( PSetUp( aSetUpInfo )^.StProcName ) of

      0 : begin
            aDataSet.SQLs.SelectSQL.Text := PSetUp( aSetUpInfo )^.SQLText;
            aDataSet.Open;
			PSetup( aSetUpInfo )^.IdRecord    := aDataSet.FBN('ID_RECORD'        ).AsInteger;
			PSetup( aSetUpInfo )^.DaysCount   := aDataSet.FBN('DAYS_COUNT_BEFORE').AsInteger;
            PSetup( aSetUpInfo )^.Pogreshnost := aDataSet.FBN('POGRESHNOST'      ).AsCurrency;
          end;

      1 : begin
            aDataSet.SQLs.SelectSQL.Text := PSetUp( aSetUpInfo )^.SQLText;
            aDataSet.Open;
            PSetup( aSetUpInfo )^.IdRecord   := aDataSet.FBN('ID_RECORD'        ).AsInteger;
            PSetUp( aSetUpInfo )^.DateRate   := aDataSet.FBN('DATE'             ).AsDateTime;
            PSetUp( aSetUpInfo )^.FixedRate  := aDataSet.FBN('FIXED_RATE'       ).AsFloat;
            PSetUp( aSetUpInfo )^.UaTerrRate := aDataSet.FBN('UA_TERRITORY_RATE').AsFloat;
            PSetUp( aSetUpInfo )^.ExportRate := aDataSet.FBN('EXPORT_RATE'      ).AsFloat;
          end;

      2 : begin
            aDataSet.SQLs.SelectSQL.Text := PSetUp( aSetUpInfo )^.SQLText;
            aDataSet.Open;
            PSetUp( aSetUpInfo )^.FixedRate  := aDataSet.FBN('OUT_FIXED_RATE'       ).AsFloat;
            PSetUp( aSetUpInfo )^.UaTerrRate := aDataSet.FBN('OUT_UA_TERRITORY_RATE').AsFloat;
            PSetUp( aSetUpInfo )^.ExportRate := aDataSet.FBN('OUT_EXPORT_RATE'      ).AsFloat;
          end;
    end;

end; } //End of procedure GetSetUpInfo

function SortArray( var aArray: TIntArray ): Boolean;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	SortArray                                                                  *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
*	��������� �������� ������������� ������� �� ����������� �� ������ �����.   *
*                                                                              *
* IN:                                                                          *
*       aArray   - �������� ������������ ������.                               *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*       Result: Boolean                                                        *
*                                                                              *
* RESULT: ������� ���������� false, ���� ��� ������� ������ ������ .           *
*                                                                              *
*******************************************************************************}

var
    i        : Integer;
    Step     : Integer;
    Temp     : Integer;
    StepDone : Boolean;

begin

  if aArray <> nil
  then begin

    Step := High( aArray ) div 2;

    repeat

        repeat

          StepDone := True;

          for i := Low( aArray ) to ( High( aArray ) - Step ) do
          begin

            if aArray[i] > aArray[i + Step]
            then begin
              Temp             := aArray[i];
              aArray[i]        := aArray[i + Step];
              aArray[i + Step] := Temp;
              StepDone         := False;
            end;

          end;

        until( StepDone );

        Step := Step div 2;

    until ( Step = 0 );

    Result := True;
  end
  else
    Result := False;

end;  //End of function SortArray

function CheckDBFStructure( aSource: THalcyonDataSet; const aDBFFileName: String; aFields: array of TFieldRec; aErrorMsg: array of String; aHWND: HWND ): TImportCheckError;

{********************************************************************************
*                                                                               *
* �������� ������� :                                                            *
*                                                                               *
*	CheckDBFStructure                                                           *
*                                                                               *
* ���������� ������� :                                                          *
*                                                                               *
*	��������� ������������ DBF-������� �������� ���������.                      *
*                                                                               *
* IN:                                                                           *
*       aSource      - ��, ���������� DBF-�������, ���������� ��������.         *
*       aFields      - ������ �����, �� ������� ���������� ��������� ��������.  *
*       aErrorMsg    - ������ ��������� �� �������, ������������ � ���� ��������*
*       aDBFFileName - ���� � DBF-�����, ����������� ������� ��� ��������.      *
*                                                                               *
* OUT:                                                                          *
*                                                                               *
*       Result: TImportCheckError                                               *
*                                                                               *
* RESULT: ������� � ���������� �������� ����������:                             *
*                                                                               *
*        ectNone           - ������ �� ���� ����������.                         *
*        ectFNUnknown      - ���� � �������� ������ �� �������.                 *
*        ectFTIcompatible  - ��� ���� �� ������������� ����������.              *
*        ectParamsNotFound - ��������� ��� �������� �����������.                *
*                                                                               *
********************************************************************************}
var
    i, n   : Integer;
    vField : TField;
begin

    //�������� ��������� + ������ �� DBF-�����
    if aSource.Active
    then
        aSource.Close;

    aSource.TableName := aDBFFileName;
    aSource.Open;
    n := High( aFields );

    //���������: �� ���� �� ������ ��������� �����?
    if n = -1
    then begin
        Result := ectParamsNotFound;
        Exit;
    end
    else begin
        Result := ectNone;
    end;

    //��������� ������������ ����� �� ���������� ��������� �������
    for i := Low( aFields ) to n
    do begin

        with aFields[i]
        do begin

            vField := aSource.FindField( FieldName );

            //��������� ��� ����
            if vField = nil
            then begin
                Result := ectFNUnknown;
//                MessageBox( aHWND, PChar( aErrorMsg[0] ), PChar( sMsgCaptionErr ), MB_OK or MB_ICONERROR );
                Exit;
            end
            else
                //��������� ��� ����
                if vField.DataType <> FieldType
				then begin
					Result := ectFTIcompatible;
//                    MessageBox( aHWND, PChar( aErrorMsg[1] ), PChar( sMsgCaptionErr ), MB_OK or MB_ICONERROR );
//                    Exit;
				end;
		end;

	end;

end;  //End of function CheckDBFStructure

procedure SetFirstZero( var aDigit: String );
{*******************************************************************************
*                                                                              *
* �������� ��������� :                                                         *
*                                                                              *
*	SetFirstZero                                                               *
*                                                                              *
* ���������� ��������� :                                                       *
*                                                                              *
* ��������� � ����� ����������� ����.                                          *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aDigit - �����, ���������� ��������������.                              *
*                                                                              *
*******************************************************************************}
begin
	if StrToInt( aDigit ) < 10
	then
		aDigit := '0' + aDigit;
end;  //End of procedure SetFirstZero

procedure FreeAndNilPTR( var aPointer: Pointer; const aPTRIsUntyped: Boolean = False );
{*******************************************************************************
*                                                                              *
* �������� ��������� :                                                         *
*                                                                              *
*	FreeAndNilPTR                                                              *
*                                                                              *
* ���������� ��������� :                                                       *
*                                                                              *
* ����������� ������, ���������� ��� ��������� � ������� ������ �� �� �����.   *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aPointer      - ������ �� ���������.                                    *
*      aPTRIsUntyped - �������, ������������ ���. �� ��������� ��������������  *
*                      ��� ���.                                                *
*                                                                              *
*******************************************************************************}
begin
    if aPointer <> nil
    then begin

        if aPTRIsUntyped
        then
            FreeMemory( aPointer )
        else
            Dispose( aPointer );

        aPointer := nil;
    end;
end;  //End of procedure FreeAndNilPTR

function GetMonthName(d : TDateTime) : Shortstring;
var
 m : word;
begin
 Result := '';

 m := MonthOf(d);

 case m of
   1  : Result := '������';
   2  : Result := '�������';
   3  : Result := '����';
   4  : Result := '������';
   5  : Result := '���';
   6  : Result := '����';
   7  : Result := '����';
   8  : Result := '������';
   9  : Result := '��������';
   10 : Result := '�������';
   11 : Result := '������';
   12 : Result := '�������';
 end;
end;

end.
