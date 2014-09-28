unit uUtils;

{*******************************************************************************
*                                                                              *
* �������� ������ :                                                            *
*                                                                              *
*	uUtils                                                                     *
*                                                                              *
* ���������� ������ :                                                          *
*                                                                              *
*	���������������� �������� ������������ � ���������� �������� � �������.    *
*                                                                              *
* Copyright  �  ��� 2005,  �����: ������� �.�                                 *
*                                                                              *
*******************************************************************************}

interface

uses Windows, Classes, SysUtils, Dialogs, Controls, RxMemDS, DB, pFIBDataBase,
     Fib, IniFiles, Registry, uTypes, uLib;

	procedure ReadIniFile        ( const aFileName: String; const aDefIniParams: array of TDefIniParams; aIniParams: TStringList );
	procedure FillDataSet        ( aDataSet: TRxMemoryData; const aSourceList: TUsrStringList; var aSelRecCount: Integer; const aMode: TFillMode = fmInsert );
	procedure LogException       ( const aFileName: TFileName );
	procedure ParseFileName      ( const aFileName, aKeyExpr: String; var aScriptInfo: TScriptInfo; aSections: TStringList = nil );
	procedure ExtractKeyBlock    ( var aKeyBlock: String; var aSeparatorCount: Integer; const aSeparatorChar: String );
	procedure CreateMyProcess    ( const aAppName, aCommandLine: PAnsiChar; aWindowState: Word );
	procedure DelDirEndDelimiter ( var aDirPath: String );
	procedure SetDirEndDelimiter ( var aDirPath: String );

	function  FindText           ( aSourceDS: TRxMemoryData; const aSearchFieldName: String; const aSearchParams: TPtr_SearchParams ): Boolean;
	function  GetKeyExpr         ( const aProjectName: String ): String;
	function  LoadScripts        ( const aFilterParams: TFilterParams; var aScriptNames: TUsrStringList; var aMaxUpdNumber: TUpdateNumInfo ): TLoadScrResult;
	function  RenameScript       ( const aOldFileName: String; var aNewFileName: String; const aRenameParams: TRenameParams ): Boolean;
	function  SelectRecords      ( aDataSet: TRxMemoryData; const aSelectionMode: TSelectionMode ): Integer;
	function  IsDateInPeriod     ( const aCurrDate: TDate; const aDateBeg, aDateEnd: String ): Boolean;
	function  TestConnection     ( aDataBase: TpFIBDataBase; const aDBPath, aUserName, aPassword: String; var aErrIBMsg: String; var aErrIBCode: Integer ): Boolean;
	function  GetMaxUpdNumber    ( const aMaxUpdNumParams: TMaxUpdNumParams ): TUpdateNumInfo;

implementation

uses StrUtils, DateUtils;

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

procedure ExtractKeyBlock ( var aKeyBlock: String; var aSeparatorCount: Integer; const aSeparatorChar: String );

{*******************************************************************************
*                                                                              *
* �������� ��������� :                                                         *
*                                                                              *
*	ExtractKeyBlock                                                            *
*                                                                              *
* ���������� ��������� :                                                       *
*                                                                              *
*   ��������� �������� ���� �������� ���������.(������ ��������� ���.          *
*   ���������������)                                                           *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aKeyBlock       - ������, ���������� ����� �������� ���������.          *
*      aSeparatorChar  - ������-����������, ���������� ���� �� ����� �����     *
*                        �������� ���������.                                   *
*      aSeparatorCount - ���������� ��������� ��������-������������            *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*      aKeyBlock       - ������, ���������� 1 ���� �������� ���������.         *
*      aSeparatorCount - ���������� ��������� ��������-������������            *
*                                                                              *
*******************************************************************************}
var
    Counter     : Integer;
    CharIndex   : Integer;
begin

	Counter := 0;
	CharIndex := 0;
    aKeyBlock := aSeparatorChar + aKeyBlock;
    aSeparatorCount := 0;
    //���� ������ ����� �������� ���������
    repeat
	  Inc( Counter );
	  CharIndex := PosEx( aSeparatorChar, aKeyBlock, CharIndex + 1 );
    until ( aKeyBlock[CharIndex] <> aKeyBlock[CharIndex + 1] );
	//�������� ���������� ��������� ��������-������������
	aSeparatorCount := Counter - 1;
    //�������� ������������������ ��������-������������, � ������� ���������� ������
    Delete( aKeyBlock, 1, CharIndex );
    CharIndex := Pos( aSeparatorChar, aKeyBlock );
    //�������� ��� �������, ��������� �� ������ �������� ���������
    Delete( aKeyBlock, CharIndex, Length( aKeyBlock ) - CharIndex + 1 );

end;  //End of procedure ExtractKeyBlock

procedure SetDirEndDelimiter ( var aDirPath: String );
{*******************************************************************************
*                                                                              *
* �������� ��������� :                                                         *
*                                                                              *
*	SetDirEndDelimiter                                                         *
*                                                                              *
* ���������� ��������� :                                                       *
*                                                                              *
*   � ����������� �� ���� �� ��������� ���� � ����������� ���������� ������,   *
*   ���� ��� ����������.                                                       *
*                                                                              *
* IN:                                                                          *
*      aDirPath - ��������, ���������� ���� � �����������.                     *
* OUT:                                                                         *
*      aDirPath - ��������, ���������� ���� � �����������.                     *
*                                                                              *
*******************************************************************************}
begin

    if Trim( aDirPath ) <> sEMPTY_STR
    then begin

        if Pos( sSEPARATOR_FOLDER_WIN, aDirPath ) <> 0
        then begin
          if aDirPath[ Length( aDirPath ) ] <> sSEPARATOR_FOLDER_WIN
          then
              aDirPath := aDirPath + sSEPARATOR_FOLDER_WIN
        end
        else
          if aDirPath[ Length( aDirPath ) ] <> sSEPARATOR_FOLDER_UNX
          then
              aDirPath := aDirPath + sSEPARATOR_FOLDER_UNX;
    end;

end; //End of procedure SetDirEndDelimiter

function GetKeyExpr ( const aProjectName: String ): String;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	GetKeyExpr                                                                 *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
* ����� ��������� ���������, ���������������� ������� �������.                 *
*                                                                              *
* IN:                                                                          *
*      aProjectName - �������� �������.                                        *
* OUT:                                                                         *
*      Result       - �������� ��������� ���������.                            *
*                                                                              *
* RESULT: String.                                                              *
*                                                                              *
*******************************************************************************}
var
    i, n : Integer;
begin
    Result := sEMPTY_STR;
    n := High( cProjectParams );

    for i := Low( cProjectParams ) to n
    do begin
        if Pos(UpperCase( cProjectParams[i].Name),UpperCase(aProjectName))<>0   //UpperCase( aProjectName ) = UpperCase( cProjectParams[i].Name )
        then begin
            Result := cProjectParams[i].KeyExpr;
            Break;
        end;
    end;

end;  //End of function GetKeyExpr

procedure FillDataSet( aDataSet: TRxMemoryData; const aSourceList: TUsrStringList; var aSelRecCount: Integer; const aMode: TFillMode = fmInsert );

{*******************************************************************************
*                                                                              *
* �������� ��������� :                                                         *
*                                                                              *
*	FillDataset                                                                *
*                                                                              *
* ���������� ��������� :                                                       *
*                                                                              *
* ��������� ����� ������ ���������� �� ������.                                 *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aMode        - ����� ����������.                                        *
*      aDataSet     - ����� ������ ��������.                                   *
*      aSourceList  - ������ ��������, ���������� ����������.                  *
*      aSelRecCount - ���������� ���������� �������.                           *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*      aDataSet    - ����������� ����� ������.                                 *
*      aSelRecCount - ���������� ���������� �������.                           *
*                                                                              *
*******************************************************************************}
var
    i, n         : Integer;
    Index        : Integer;
    IsActive     : Boolean;
    CurrFileName : String;
begin
  try

    //��������� ��
    case aMode of

      fmInsert : begin
                     //������� ��
                     if aDataSet.Active
                     then
                         aDataSet.Close;

                     aDataSet.Open;
                     aDataSet.DisableControls;
                     n := aSourceList.Count - 1;

                     for i := 0 to n
                     do begin
                         aDataSet.Insert;
                         aDataSet.FieldByName(sIS_ACTIVE_FN  ).AsBoolean  := cDEF_IS_ACTIVE;
                         aDataSet.FieldByName(sSCRIPT_NAME_FN).AsString   := aSourceList.Strings[i];
						 aDataSet.FieldByName(sFILE_SIZE_FN  ).AsFloat    := TUsrObject( aSourceList.Objects[i] ).FileSize;
						 aDataSet.FieldByName(sDATE_CHANGE_FN).AsDateTime := TUsrObject( aSourceList.Objects[i] ).FileDateChange;
						 aDataSet.Post;
					 end;

					 aSelRecCount := n + 1;
				 end;

	  fmAppend : begin
				   //�������������� �� � ����������
				   if not aDataSet.Active
				   then
					   aDataSet.Open;

				   n := aDataSet.RecordCount - 1;
				   aDataSet.DisableControls;
				   aDataSet.First;

				   //������� �� �� �� ���������� ������
				   for i := 0 to n
				   do begin
					   IsActive     := aDataSet.FieldByName(sIS_ACTIVE_FN  ).AsBoolean;
					   CurrFileName := aDataSet.FieldByName(sSCRIPT_NAME_FN).AsString;
					   Index        := aSourceList.IndexOf( CurrFileName );

					   if Index = -1
					   then begin
						   if IsActive
						   then
							   Dec( aSelRecCount );

						   aDataSet.Delete;
					   end
					   else begin
						   if not IsActive
						   then begin
							   aDataSet.Edit;
							   aDataSet.FieldByName(sIS_ACTIVE_FN).AsBoolean := cDEF_IS_ACTIVE;
							   aDataSet.Post;
							   Inc( aSelRecCount );
						   end;

						   aDataSet.Next;
					   end;

				   end;

				   //������������� ��
				   n := aSourceList.Count - 1;

				   for i := 0 to n
				   do begin

					   if not aDataSet.Locate( sSCRIPT_NAME_FN, aSourceList.Strings[i], [] )
					   then begin
						   aDataSet.Insert;
						   aDataSet.FieldByName(sIS_ACTIVE_FN  ).AsBoolean  := cDEF_IS_ACTIVE;
						   aDataSet.FieldByName(sSCRIPT_NAME_FN).AsString   := aSourceList.Strings[i];
						   aDataSet.FieldByName(sFILE_SIZE_FN  ).AsFloat    := TUsrObject( aSourceList.Objects[i] ).FileSize;
						   aDataSet.FieldByName(sDATE_CHANGE_FN).AsDateTime := TUsrObject( aSourceList.Objects[i] ).FileDateChange;
						   aDataSet.Post;
						   Inc( aSelRecCount );
					   end;

				   end;

                 end;
    end;

    aDataSet.First;
  finally
    aDataSet.EnableControls;
  end;

end;  //End of procedure FillDataset

function  SelectRecords ( aDataSet: TRxMemoryData; const aSelectionMode: TSelectionMode ): Integer;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	SelectRecords                                                              *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
* �������� ��������� ������� �� ������ ������ � ����������� �� ���� ������.    *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aDataSet       - ����� ������.                                          *
*      aSelectionMode - ����� ������ ��������� �������.                        *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*      Result    - ���������� ���������� �������.                              *
*                                                                              *
* RESULT: Integer.                                                             *
*                                                                              *
*******************************************************************************}
var
    i, n  : Integer;
    Count : Integer;
begin
    n := aDataSet.RecordCount - 1;
    Count := 0;
    aDataSet.DisableControls;
    aDataSet.First;

    case aSelectionMode of

      smInvert      : begin
                          for i := 0 to n
                          do begin
                              aDataSet.Edit;
                              if aDataSet.FieldByName(sIS_ACTIVE_FN).AsBoolean
                              then begin
                                  aDataSet.FieldByName(sIS_ACTIVE_FN).AsBoolean := False;
                              end
                              else begin
                                  aDataSet.FieldByName(sIS_ACTIVE_FN).AsBoolean := True;
                                  Inc( Count );
                              end;
                              aDataSet.Post;
                              aDataSet.Next;
                          end;

                          Result := Count;
                      end;


      smSelectAll   : begin
                          Result := n + 1;

                          for i := 0 to n
                          do begin
                              aDataSet.Edit;
                              aDataSet.FieldByName(sIS_ACTIVE_FN).AsBoolean := True;
                              aDataSet.Post;
                              aDataSet.Next;
                          end;
                      end;

      smUnSelectAll : begin
                          Result := 0;

                          for i := 0 to n
                          do begin
                              aDataSet.Edit;
                              aDataSet.FieldByName(sIS_ACTIVE_FN).AsBoolean := False;
                              aDataSet.Post;
                              aDataSet.Next;
                          end;
                      end;
    end;

    aDataSet.EnableControls;

end;  //End of function SelectRecords

procedure DelDirEndDelimiter ( var aDirPath: String );
{*******************************************************************************
*                                                                              *
* �������� ��������� :                                                         *
*                                                                              *
*	DelDirEndDelimiter                                                         *
*                                                                              *
* ���������� ��������� :                                                       *
*                                                                              *
*   � ����������� �� ���� �� ������� ����������� ���� ��� ���� � �����������,  *
*   ���� ��� ����������.                                                       *
*                                                                              *
* IN:                                                                          *
*      aDirPath - ��������, ���������� ���� � �����������.                     *
* OUT:                                                                         *
*      aDirPath - ��������, ���������� ���� � �����������.                     *
*                                                                              *
*******************************************************************************}
var
    StrLength : Integer;
begin

  StrLength := Length( aDirPath );

  if StrLength > 0
  then begin
      if (     ( aDirPath[ StrLength ] = sSEPARATOR_FOLDER_WIN )
           OR  ( aDirPath[ StrLength ] = sSEPARATOR_FOLDER_UNX ) )
           AND ( StrLength > cMIN_PATH_LENGTH )
      then
          Delete( aDirPath, StrLength, 1 );
  end;

end;   //End of procedure DelDirEndDelimiter

function IsDateInPeriod ( const aCurrDate: TDate; const aDateBeg, aDateEnd: String ): Boolean;
{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	IsDateInPeriod                                                             *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
*   �����������, �������� �� ������� ���� � ��������, �������� ����� �������   *
*   ������.                                                                    *
*                                                                              *
* IN:                                                                          *
*      aDateBeg  - ����, �������� ������ ������� ���������� ���������.         *
*      aDateEnd  - ����, �������� ������� ������� ���������� ���������.        *
*      aCurrDate - ����, ���������� ��������.                                  *
*                                                                              *
* OUT:                                                                         *
*      Result - ��������� �������.                                             *
*                                                                              *
* RESULT: Boolean.                                                             *
*         ���� ���� �������� � �������� ��������, �� ���������, ������������   *
*         �������� - ������; � ��������� ������ - ����.                        *
*                                                                              *
*******************************************************************************}
var
    DateBeg     : TDate;
    DateEnd     : TDate;
    PeriodBound : TPeriodbound;
begin
  try

    //A���������� ������� �������
    if ( aDateBeg = sEMPTY_STR ) AND ( aDateEnd = sEMPTY_STR )
    then
        PeriodBound := pbNone
    else
        if aDateBeg <> sEMPTY_STR
        then begin
            DateBeg := StrToDate( aDateBeg );
            PeriodBound := pbLeft;

            if aDateEnd <> sEMPTY_STR
            then begin
                DateEnd := StrToDate( aDateEnd );
                PeriodBound := pbBoth;
            end;
        end
        else begin
            DateEnd := StrToDate( aDateEnd );
            PeriodBound := pbRight;
        end;

    //��������� ��������� �������
    case PeriodBound of

      pbNone  : begin
                  Result := True;
                end;

      pbLeft  : begin
                  if aCurrDate >= DateBeg
                  then
                      Result := True
                  else
                      Result := False;
                end;

      pbRight : begin
                  if aCurrDate <= DateEnd
                  then
                      Result := True
                  else
                      Result := False;
                end;

      pbBoth  : begin
                  if ( aCurrDate >= DateBeg ) AND ( aCurrDate <= DateEnd )
                  then
                      Result := True
                  else
                      Result := False;
                end;
    end;
  except
      Result := False;
      Raise;
  end;
end;  //End of function IsDateInPeriod

procedure ParseFileName ( const aFileName, aKeyExpr: String; var aScriptInfo: TScriptInfo; aSections: TStringList = nil );

{*******************************************************************************
*                                                                              *
* �������� ��������� :                                                         *
*                                                                              *
*	ParseFileName                                                              *
*                                                                              *
* ���������� ��������� :                                                       *
*                                                                              *
*   ��������� ������ ����� ����� ������� � ������������ �� ��������������.     *
*                                                                              *
* IN:                                                                          *
*      aKeyExpr    - ���� ��� ���������  �������� ��������, ������������       *
*                    �������� ������ ������ ��������.                          *
*      aFileName   - ��� ����� �������, ���������� �������                     *
*      aSections   - ������, ���������� ������ �� ������� ������� ��� �����    *
*                    �������.                                                  *
*      aScriptInfo - ������, ���������� ����� ���������� �������.              *
* OUT:                                                                         *
*      aSections   - ������, ���������� ������ �� ������� ������� ��� �����    *
*                    �������.                                                  *
*      aScriptInfo - ������, ���������� ����� ���������� �������.              *
*                                                                              *
*******************************************************************************}
var
	i, j, n, k       : Integer;
	Index            : Integer;
    ErrCode          : Integer;
	KeyIndex         : Integer;
	KeyBlock         : String;
	KeyBlocks        : TStringList;
	UpdateNum        : Integer;
	TmpFileName      : String;
	FmtSettings      : TFormatSettings;
	DelCharCount     : Integer;
    DaysCountScr     : Integer;
	SeparatorCount   : Integer;
	StrScrDateCreate : String;
begin
	try
        TmpFileName := aFileName;
		KeyBlocks := TStringList.Create;
		FmtSettings.DateSeparator   := cDATE_SEPARATOR;
        FmtSettings.ShortDateFormat := sFORMAT_DATE_TO_STR;

        //�������� ���� �������� �������
        StrScrDateCreate := Copy( TmpFileName, 1, cDATE_DIGITS_COUNT );
        aScriptInfo.DateCreate := StrToDate( StrScrDateCreate, FmtSettings );
        KeyBlocks.Add( DateToStr( aScriptInfo.DateCreate ) );

        //�������� ���� �������� �������
        Delete( TmpFileName, 1, cDATE_DIGITS_COUNT );

        //�������� �� ����� ����� ������� ����� �������� c�������
        repeat
            KeyBlock := TmpFileName;
            ExtractKeyBlock( KeyBlock, SeparatorCount, sSCR_SEPARATOR );
            KeyBlocks.Add( KeyBlock );
            DelCharCount := Length( KeyBlock ) + SeparatorCount;
            Delete( TmpFileName, 1, DelCharCount );
        until ( Length( TmpFileName ) = 0 );

        //���������: ����� �� ��������� ������ � ������� �������?
        if Pos( aKeyExpr, KeyBlocks.Strings[2] ) <> 0
        then begin
            aScriptInfo.CanExecute := True;
        end
        else begin
            aScriptInfo.CanExecute := False;
        end;

        //���������: �������� �� ��� ������ � ������� �������?
        if Pos( aKeyExpr, KeyBlocks.Strings[3] ) <> 0
        then begin
            aScriptInfo.Execute := True
        end
        else begin
            aScriptInfo.Execute := False;
        end;

        //����������� �������� �����, ���������� ���� �������� �������, ��� ������������ � �����������
        n := KeyBlocks.Count - 3;
        aScriptInfo.IsInUpdate   := False;
		aScriptInfo.UpdateNumMajor := sEMPTY_STR;
		aScriptInfo.UpdateNumMinor := sEMPTY_STR;

		//���������: ����� �� ������ � �����-����-����������?
		for i := 4 to n
		do begin
			KeyIndex := Pos( aKeyExpr, KeyBlocks.Strings[i] );

			//��������� ���� ���������� �������
			if KeyIndex <> 0
			then begin
				KeyBlock := KeyBlocks.Strings[i];
				Delete( KeyBlock, KeyIndex, Length( aKeyExpr ) );
				Index := Pos( sUPDATE_EXPR, KeyBlock );

				//���������: ����� �� ������ � ����������?
				if Index <> 0
				then begin
					Delete( KeyBlock, Index, Length( KeyBlock ) - Index + 1 );
				end;

				Val( KeyBlock, DaysCountScr, ErrCode );

				//����������� ��������� �������������� ������� � ���� ����� ����� �������� � ����� ���������� �������
				if ( ErrCode = 0 ) AND ( DaysCountScr >= 0 )
				then begin
					aScriptInfo.DateExecute := aScriptInfo.DateCreate + DaysCountScr;
				end
                else begin
                    aScriptInfo.DateExecute := aScriptInfo.DateCreate;
                end;

            end;

            Index := Pos( sUPDATE_EXPR, KeyBlocks.Strings[i] );

            //��������� ���������� ����� ����������
            if ( KeyIndex <> 0 ) AND ( Index <> 0 )
            then begin
                aScriptInfo.IsInUpdate     := True;
				aScriptInfo.UpdateNumMajor := sZERO;
				aScriptInfo.UpdateNumMinor := sZERO;
				KeyBlock := KeyBlocks.Strings[i];
				Delete( KeyBlock, 1, Index );

				//�������� ���������� ����� ����������, � ������� ����� ������ ������
				Index := Pos( cUPDATE_NUMBER_SEPARATOR, KeyBlock );

				//�������� ���������� ����� ����������
				case Index of

				  0  : begin
						 Val( KeyBlock, UpdateNum, ErrCode );

						 //����������� ���������� ���������
						 if ( ErrCode <> 0 )
						 then begin
							aScriptInfo.UpdateNumMajor := sDEF_UPDATE_NUMBER;
							aScriptInfo.UpdateNumMinor := sDEF_UPDATE_NUMBER;
						 end
						 else begin
							 aScriptInfo.UpdateNumMajor := IntToStr( UpdateNum );
						 end;
					   end;

				  1  : begin
						 aScriptInfo.UpdateNumMajor := sDEF_UPDATE_NUMBER;
					   end;

				  else begin
						 aScriptInfo.UpdateNumMajor := Copy( KeyBlock, 1, Index - 1 );
						 aScriptInfo.UpdateNumMinor := Copy( KeyBlock, Index + 1, Length( KeyBlock ) - Index );
					   end;
				end;

            end;

        end;

    finally

        if Assigned( KeyBlocks )
        then begin
            if Assigned( aSections )
            then
                aSections.Assign( KeyBlocks );

			FreeAndNil( KeyBlocks );
		end;

	end;

end;  //End of procedure ParseFileName

function LoadScripts ( const aFilterParams: TFilterParams; var aScriptNames: TUsrStringList; var aMaxUpdNumber: TUpdateNumInfo ): TLoadScrResult;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	LoadScripts                                                                *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
* ������������ ������ ��� ������ ��������, ������� ������ ����� � ����������. *
* ����� ������������� ������ ���������� ����������.                            *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aScriptNames  - ������ ��� ������ ��������, ������� ����� �������� �   *
*                      ����������.                                             *
*      aMaxUpdNumber - ������������ ����� ����� ����������.                    *
*      aFilterParams - ��������� ��������� ����������, �� ��������� �������    *
*                      ����������� ��������� ��������, ������� ����� ��������  *
*                      � ����������.                                           *
* OUT:                                                                         *
*                                                                              *
*      Result        - ����������� ����������� �������� ���� ������ ��������.  *
*      aMaxUpdNumber - ������������ ����� ����� ����������.                    *
*                                                                              *
* RESULT: TLoadScrResult.                                                      *
*                                                                              *
*******************************************************************************}
var
	FileRec            : TSearchRec;
	UsrObject          : TUsrObject;
	SearchRes          : Integer;
	IsInPeriod         : Boolean;
	ScriptInfo         : TScriptInfo;
	ScriptExist        : Boolean;
	CurrUpdateNum      : TUpdateNumInfo;
begin
  try

	try
		Result := lrNone;
		with CurrUpdateNum
		do begin
			UpdateNumMajor := cDEF_UPDATE_NUMBER;
			UpdateNumMinor := cDEF_UPDATE_NUMBER;
		end;

		//�������� ����� ���� �� ���� ���� �������
		SearchRes := FindFirst( aFilterParams.ScriptPath, faAnyFile, FileRec );

		//���������: ��� �� ������ ���� �� ���� ���� �������?
		if SearchRes <> 0
		then begin
			Result := lrScrNotFound;
			Exit;
		end
		else begin
			Result      := lrFilterInvalid;
			ScriptExist := False;
		end;

		//�������� ����� ��� ������������ ����� ��������, ��������������e ��������� ����������
		while ( SearchRes = 0 )
		do begin

			//��������� ������ ����� ����� �������
			ParseFileName( FileRec.Name, aFilterParams.KeyExpr, ScriptInfo );

			//���������: ����� �� ������� ������ ���� ������� � ����������?
			if ScriptInfo.CanExecute
			then begin

				//�������� ���������� ����� ����������
				if ScriptInfo.IsInUpdate
				then begin
                    with CurrUpdateNum
                    do begin
                        UpdateNumMajor := StrToInt( ScriptInfo.UpdateNumMajor );
                        UpdateNumMinor := StrToInt( ScriptInfo.UpdateNumMinor );
                    end;
				end
				else begin
                    with CurrUpdateNum
                    do begin
                        UpdateNumMajor := cZERO;
                        UpdateNumMinor := cDEF_UPDATE_NUMBER;
                    end;
				end;

				//������� ������������ �������� ������� ����� ����������� ������ ����������
				if aMaxUpdNumber.UpdateNumMajor < CurrUpdateNum.UpdateNumMajor
				then
					aMaxUpdNumber.UpdateNumMajor := CurrUpdateNum.UpdateNumMajor;

				//������� ������������ �������� �������������� ����� ����������� ������ ����������
				if aMaxUpdNumber.UpdateNumMinor < CurrUpdateNum.UpdateNumMinor
				then
					aMaxUpdNumber.UpdateNumMinor := CurrUpdateNum.UpdateNumMinor;

				//���������: �� ������� �� ��� ������� ������ � ����������?
				if    ( not ScriptInfo.Execute AND ( ( aFilterParams.UpdateNumMajor = 0 )                            and ( aFilterParams.UpdateNumMinor = 0 ) ) )
				   OR (     ScriptInfo.Execute AND ( ( aFilterParams.UpdateNumMajor = CurrUpdateNum.UpdateNumMajor ) and ( aFilterParams.UpdateNumMinor = CurrUpdateNum.UpdateNumMinor ) ) )
				then begin
					//���������: �������� �� ���� �������� ������� ������� � �������� ������
					IsInPeriod := IsDateInPeriod( ScriptInfo.DateCreate, aFilterParams.DateBeg, aFilterParams.DateEnd );

					//���������� ��� �������, ������� ����� �������� � ����������
					if IsInPeriod
                    then begin
                        UsrObject := TUsrObject.Create;
                        UsrObject.PutFileSize( FileRec.Size );
                        UsrObject.PutFileDateChange( FileRec.Time );
                        aScriptNames.AddObject( FileRec.Name, UsrObject );
                        ScriptExist := True;
                    end;

                end;

            end;

            //������� ��������� ���� �������
            SearchRes := FindNext( FileRec );
        end;

        //��������� ������������ �������� ���������
        if ScriptExist
        then begin
            Result := lrLoadSuccess;
		end;

    finally
		FindClose( FileRec );
	end;
  except
      Result := lrNone;
      Raise;
  end;
end;  //End of function LoadScriptsExt

function RenameScript ( const aOldFileName: String; var aNewFileName: String; const aRenameParams: TRenameParams ): Boolean;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	RenameScript                                                               *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
* ��������� ������ ����� ������� �� ��������� �������.                         *
*                                                                              *
* IN:                                                                          *
*         aOldFileName  - ������ ��� �������.                                  *
*         aNewFileName  - ����� ��� �������.                                   *
*         aRenameParams - ��������� �������������� ��������.                   *
* OUT:                                                                         *
*                                                                              *
*         aNewFileName  - ����� ��� �������.                                   *
*                                                                              *
* RESULT: Boolean.                                                             *
*                                                                              *
* NOTE:                                                                        *
*       ������� ���������� True, ���� ��� ������� �������� �������������� �    *
*       False - � ��������� ������.                                            *
*******************************************************************************}
var
    i, j, n, k          : Integer;
    KeyIndex            : Integer;
    KeyBlock            : String;
    EmptyStr            : String;
    KeyBlocks           : TStringList;
    ScriptInfo          : TScriptInfo;
	FmtSettings         : TFormatSettings;
    CurrKeyBlock        : String;
    KeyBlockIndex       : Integer;
    UpdateNumMinorStr   : String;
    UpdateNumMajorStr   : String;
    DaysBetweenCount    : Extended;
    CanEditScriptName   : Boolean;
    DaysBetweenCountStr : String;
begin
  try
      Result    := False;
      EmptyStr  := sEMPTY_CHAR;
      KeyBlocks := TStringList.Create;

      with aRenameParams
      do begin
          //��������� ������ ����� ����� �������
          ParseFileName( aOldFileName, KeyExpr, ScriptInfo, KeyBlocks );

          case RenameMode of

            rmRename   : begin
                           if not( ScriptInfo.Execute OR ScriptInfo.IsInUpdate )
                           then
                               CanEditScriptName := True
                           else
                               CanEditScriptName := False;
                         end;

            rmUnRename : begin
                           if ScriptInfo.Execute AND ScriptInfo.IsInUpdate
                           then
                               CanEditScriptName := True
                           else
                               CanEditScriptName := False;
                         end;
          end;

          //���������: ����� �� ������ ����(���)����������� ������ ������?
          if ScriptInfo.CanExecute AND CanEditScriptName
          then begin
              KeyIndex := Pos( KeyExpr, KeyBlocks.Strings[2] );

              //�������� �� 2-�� ����� �������� ��������� ��������� �������������
              if ScriptInfo.Execute
              then begin
                  KeyBlock := KeyBlocks.Strings[3];
                  EmptyStr := DupeString( sEMPTY_CHAR, Length( KeyExpr ) );
                  Insert( EmptyStr, KeyBlock, KeyIndex + Length( KeyExpr ) );
                  Delete( KeyBlock, KeyIndex, Length( KeyExpr ) );
                  KeyBlocks.Strings[3] := KeyBlock;
              end;

              //��������������� ������, ���� ��� ����������
              case RenameMode of

                rmRename   : begin
                               //�������� ������, ��� ��� ����������
                               KeyBlock := KeyBlocks.Strings[3];
                               Insert( KeyExpr, KeyBlock, KeyIndex + Length( KeyExpr ) );
                               Delete( KeyBlock, KeyIndex, Length( KeyExpr ) );
							   KeyBlocks.Strings[3] := KeyBlock;

							   //�������� ���� ���������� �������
							   DaysBetweenCount    := DateCreate - ScriptInfo.DateCreate;
							   DaysBetweenCountStr := FloatToStr( DaysBetweenCount );

							   if Length( DaysBetweenCountStr ) < cDAYSBETWEEN_RESERVED_CHAR_COUNT
							   then begin
								   DaysBetweenCountStr := DupeString( sZERO, cDAYSBETWEEN_RESERVED_CHAR_COUNT - Length( DaysBetweenCountStr ) ) + DaysBetweenCountStr;
							   end;

							   //�������� ������� ����� ����������� ������ ����������
							   UpdateNumMajorStr := IntToStr( aRenameParams.UpdateNumMajor );

							   if aRenameParams.UpdateNumMajor >= 0
							   then begin
								   if Length( UpdateNumMajorStr ) < cUPDATE_MAJ_RESERVED_CHAR_COUNT
								   then begin
									   UpdateNumMajorStr := DupeString( sZERO, cUPDATE_MAJ_RESERVED_CHAR_COUNT - Length( UpdateNumMajorStr ) ) + UpdateNumMajorStr;
								   end;

								   //�������� �������������� ����� ����������� ������ ����������
								   UpdateNumMinorStr := IntToStr( aRenameParams.UpdateNumMinor );

								   if Length( UpdateNumMinorStr ) < cUPDATE_MIN_RESERVED_CHAR_COUNT
								   then begin
									   UpdateNumMinorStr := DupeString( sZERO, cUPDATE_MIN_RESERVED_CHAR_COUNT - Length( UpdateNumMinorStr ) ) + UpdateNumMinorStr;
								   end;
							   end
							   else begin

							   end;

							   //��������� �������� ���������
                               CurrKeyBlock := KeyExpr + DaysBetweenCountStr + sUPDATE_EXPR + UpdateNumMajorStr + sMINUS + UpdateNumMinorStr;

                               //�������� ������ �������� ����� � ������ ����������� �������
                               KeyBlockIndex := 4;
                               n := KeyBlocks.Count - 3;

                               for i := 4 to n
                               do begin
                                   //����������� ������������ ����������
                                   KeyBlock := KeyBlocks.Strings[i];
                                   KeyIndex := Pos( sUPDATE_EXPR, KeyBlock );
                                   Delete( KeyBlock, KeyIndex, Length( KeyBlock ) - KeyIndex + 1 );
                                   UpperCase( KeyBlock );
                                   k := Length( KeyBlock );

                                   //�������� �������� ���������, ���������������� ������
                                   for j := 1 to k
                                   do begin
                                       if not( KeyBlock[j] in cLETTERS )
                                       then begin
                                           Delete( KeyBlock, j, Length( KeyBlock ) - j + 1 );
                                           Break;
                                       end;
                                   end;

                                   //��������� ���������� ������� ����������
                                   if KeyBlock > KeyExpr
                                   then begin
                                       KeyBlockIndex := i;
                                       Break;
                                   end
                                   else begin
                                       KeyBlockIndex := i + 1;
                                   end;

                               end;

                               //��������� ������� ���� � ������ ����������� �������
                               KeyBlocks.Insert( KeyBlockIndex, CurrKeyBlock );

                             end;

                rmUnRename : begin
                               //������� � ������� ����, ���������� ���������� � ���� ���������� ������� � ����������
                               n := KeyBlocks.Count - 3;

                               for i := 4 to n
                               do begin
                                   if Pos( KeyExpr, KeyBlocks.Strings[i] ) <> 0
                                   then begin
                                       KeyBlocks.Delete( i );
                                       Break;
                                   end;
                               end;

                             end;
              end;

              //��������� ����� ��� ����� �������
              FmtSettings.DateSeparator   := cDATE_SEPARATOR;
              FmtSettings.ShortDateFormat := sFORMAT_DATE_TO_STR;
              aNewFileName := DateToStr( ScriptInfo.DateCreate, FmtSettings ) + sSCR_SEPARATOR;
              n := KeyBlocks.Count - 2;

              for i := 1 to n
              do begin
                  aNewFileName := aNewFileName + KeyBlocks.Strings[i] + DupeString( sSCR_SEPARATOR, cSECTIONS_SEPARATOR_COUNT );
              end;

              aNewFileName := aNewFileName + KeyBlocks.Strings[n+1];
              Result := True;
          end;

      end;

  finally
      if Assigned( KeyBlocks )
      then
          FreeAndNil( KeyBlocks );
  end;
end;  //End of function RenameScript

function TestConnection( aDataBase: TpFIBDataBase; const aDBPath, aUserName, aPassword: String; var aErrIBMsg: String; var aErrIBCode: Integer ): Boolean;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	TestConnection                                                             *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
*	��������� ������������ ���������� ����������.                              *
*                                                                              *
* IN:                                                                          *
*       aDataBase  - ������ �� ���������, � ������� �������� �����������       *
*                      ������� ����������� � ���� ������.                      *
*       aDBPath    - ���� � ����� ���� ������.                                 *
*       aUserName  - ��� ������������.                                         *
*       aPassword  - ������.                                                   *
*       aErrIBMsg  - ��������� �� ������.                                      *
*       aErrIBCode - ��� ������.                                               *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*       Result: Boolean                                                        *
*                                                                              *
* RESULT: ������� ���������� True, ���� �����e��� ���������� ��������� �       *
*          False � ��������� ������.                                           *
*                                                                              *
*******************************************************************************}
begin
    try

        try

            if aDataBase.Connected
            then
                aDataBase.Close;

            aDataBase.DBName := aDBPath;
            aDataBase.ConnectParams.UserName := aUserName;
            aDataBase.ConnectParams.Password := aPassword;

            Result     := True;
            aErrIBMsg  := '';
            aErrIBCode := -1;

            aDataBase.Open;
        finally
            aDataBase.Close;
        end;

    except
        on E: EFIBError
        do begin
            Result     := False;
            aErrIBMsg  := E.IBMessage;
            aErrIBCode := E.IBErrorCode;
        end;
    end;
end;  //End of function TestConnection

procedure ReadIniFile ( const aFileName: String; const aDefIniParams: array of TDefIniParams; aIniParams: TStringList );

{*******************************************************************************
*                                                                              *
* �������� ��������� :                                                         *
*                                                                              *
*	ReadIniFile                                                                *
*                                                                              *
* ���������� ��������� :                                                       *
*                                                                              *
*   ��������� ��������� �� ini-�����.                                          *
*                                                                              *
* IN:                                                                          *
*      aFileName     - ������ ���� � ini-�����.                                *
*      aIniParams    - ������, ���������� �������� ������������ ���������.     *
*      aDefIniParams - ������, ���������� �������� ������ ��� ��������         *
*                      ������������ ���������.                                 *
* OUT:                                                                         *
*      aIniParams    - ������, ���������� �������� ������������ ���������.     *
*                                                                              *
*******************************************************************************}
var
    i, n : Integer;
    IniFile : TIniFile;
begin
    //��������� ������ ���������� �� ���������
    with aIniParams
    do begin
      Values[sKN_SERVER_NAME   ] := sDEF_SERVER_NAME;
      Values[sKN_DB_PATH       ] := sDEF_DB_PATH;
      Values[sKN_USER_NAME     ] := sDEF_USER_NAME;
      Values[sKN_PASSWORD      ] := sDEF_PASSWORD;
      Values[sKN_SCR_PATH      ] := sDEF_SCR_PATH;
      Values[sKN_IBESCRIPT_PATH] := sDEF_IBESCRIPT_PATH;
      Values[sKN_ACTIVE_PROJECTS] := sDEF_ACTIVE_PROJECTS;
    end;

    if FileExists( aFileName )
    then begin

        try
            IniFile := TIniFile.Create( aFileName );
            n := High( aDefIniParams );

            //��������� ������������ ������� �� ����� ��������
            for i := Low( aDefIniParams ) to n
            do begin

                with aDefIniParams[i]
                do begin
                    if IniFile.SectionExists( Section )
                    then begin
                        aIniParams.Values[Key] := IniFile.ReadString( Section, Key, DefValue );
                    end;
                end;

            end;

        finally
            if IniFile <> nil then FreeAndNil( IniFile );
        end;

    end;

end;  // End of procedure ReadIniFile

procedure CreateMyProcess ( const aAppName, aCommandLine: PAnsiChar; aWindowState: Word );

{*******************************************************************************
*                                                                              *
* �������� ��������� :                                                         *
*                                                                              *
*	CreateMyProcess                                                            *
*                                                                              *
* ���������� ��������� :                                                       *
*                                                                              *
* ��������� ������ �������, � ������ �������� � ������ ���������� ������      *
* ����������� ��������� ����������.                                            *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aAppName     - ������ ���� � ������������ ����������.                   *
*      aCommandLine - ��������� ���������� ������.                             *
*      aWindowState - ��� ���������� ���� ����������.                          *
*                                                                              *
*******************************************************************************}
var
    Result      : Boolean;
	ExitCode    : Cardinal;
	ProcessInfo : TProcessInformation;
	StartUpInfo : TStartupInfo;

begin

    //�������������� ����������� ���������
    FillChar(StartUpInfo, SizeOf(TStartUpInfo), 0);

    with StartUpInfo do
    begin
        cb := SizeOf(TStartUpInfo);
        dwFlags := STARTF_USESHOWWINDOW or STARTF_FORCEONFEEDBACK;
        wShowWindow := aWindowState;
    end;

    //������ �������
    Result := CreateProcess( aAppName, aCommandLine, nil, nil, False, NORMAL_PRIORITY_CLASS, nil, nil, StartUpInfo, ProcessInfo);

    if Result
    then
        with ProcessInfo do
        begin
            WaitForInputIdle(hProcess, INFINITE);                 // ���� ���������� �������������
            WaitforSingleObject(ProcessInfo.hProcess, INFINITE);  // ���� ���������� ��������
            GetExitCodeProcess(ProcessInfo.hProcess, ExitCode);   // �������� ��� ����������
            CloseHandle(hThread);                                 // ��������� ���������� ��������
            CloseHandle(hProcess);                                // ��������� ���������� ������
        end;

end;  //End of procedure CreateMyProcess

function GetMaxUpdNumber ( const aMaxUpdNumParams: TMaxUpdNumParams ): TUpdateNumInfo;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	GetMaxUpdNumber                                                            *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
*	��������� ������������ ���������� ����� ����������.                        *
*                                                                              *
* IN:                                                                          *
*       aMaxUpdNumParams  - ���������, ���������� �������� ������.             *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*       Result: TUpdateNumInfo                                                 *
*                                                                              *
* RESULT: ������� ���������� 0, ���� �� ������� ��������� ������������         *
*          ���������� ����� ���������� �, ���������� �����, � ��������� ������.*
*                                                                              *
*******************************************************************************}
var
	FileRec            : TSearchRec;
	SearchRes          : Integer;
	ScriptInfo         : TScriptInfo;
	CurrUpdateNumMajor : Integer;
	CurrUpdateNumMinor : Integer;
begin
  try

	try
		with Result
		do begin
			UpdateNumMajor := cZERO;
			UpdateNumMinor := cZERO;
		end;

		//�������� ����� ���� �� ���� ���� �������(������ � ��������)
		SearchRes := FindFirst( aMaxUpdNumParams.FilePath, faAnyFile, FileRec );

		//�������� ����� ��� ������������ ����� ��������(������� � ��������), ��������������e ��������� ����������
		while ( SearchRes = 0 )
		do begin
			//��������� ������ ����� ����� �������(������ � ��������)
			ParseFileName( FileRec.Name, aMaxUpdNumParams.KeyExpr, ScriptInfo );

			//�����������: ��� �� ������� ������� ���� � ����������?
			if ScriptInfo.IsInUpdate
			then begin
				CurrUpdateNumMajor := StrToInt( ScriptInfo.UpdateNumMajor );
				CurrUpdateNumMinor := StrToInt( ScriptInfo.UpdateNumMinor );

				//������� ������������ ���������� ����� ����������
				with Result
				do begin
					if UpdateNumMajor < CurrUpdateNumMajor
					then begin
						UpdateNumMajor := CurrUpdateNumMajor;
					end;

					if UpdateNumMinor < CurrUpdateNumMinor
					then begin
						UpdateNumMinor := CurrUpdateNumMinor;
					end;
				end;
                                                                                 
			end;

			//������� ��������� ���� �������(������ � ��������)
			SearchRes := FindNext( FileRec );
		end;

	finally
		FindClose( FileRec );
	end;
  except
	  with Result
	  do begin
		  UpdateNumMajor := cZERO;
		  UpdateNumMinor := cZERO;
	  end;

	  Raise;
  end;
end;  //End of function GetMaxUpdNumber

function FindText( aSourceDS: TRxMemoryData; const aSearchFieldName: String; const aSearchParams: TPtr_SearchParams ): Boolean;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	FindText                                                                   *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
* ��������� ����� ������ ������.                                               *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aSourceDS     - ����� ������, ���������� ������� ����.                  *
*      aSearchParams - ��������� �� ������, ���������� ��������� ������.       *
*                                                                              *
* OUT: Result        - ��������� ������.                                       *
*                                                                              *
*                                                                              *
*******************************************************************************}
var
    i, n       : Integer;
    CurrText   : String;
    SearchText : String;
begin

	try
        Result := False;
        SearchText := aSearchParams^.TextSearch;
		aSourceDS.DisableControls;

        if aSearchParams^.WholeWordsOnly
        then begin
            //����������� ������������������������ ��������
            if not aSearchParams^.CaseSensitive
            then begin
                SearchText := UpperCase( SearchText );

                //����������� ����������� ������
                if aSearchParams^.Direction = dtDown
                then begin
                    while not aSourceDS.Eof
                    do begin
                        aSourceDS.Next;
                        CurrText := UpperCase( aSourceDS.FieldByName(aSearchFieldName).AsString );

                        if CurrText = SearchText
                        then begin
                            Result := True;
                            Break;
                        end;
                    end;
                end
                else begin
                    while not aSourceDS.Bof
                    do begin
                        aSourceDS.Prior;
                        CurrText := UpperCase( aSourceDS.FieldByName(aSearchFieldName).AsString );

                        if CurrText = SearchText
                        then begin
                            Result := True;
                            Break;
                        end;
                    end;
                end;  //End of Direction Condition
            end
            else begin
                Result := aSourceDS.Locate( aSearchFieldName, SearchText, [] );
            end;  //End of CaseSensivity Condition
        end
        else begin
            //����������� ������������������������
            if not aSearchParams^.CaseSensitive
            then begin
                SearchText := UpperCase( SearchText );

                //����������� ����������� ������
                if aSearchParams^.Direction = dtDown
                then begin
                    aSourceDS.UpdateCursorPos;
                    while not aSourceDS.Eof
                    do begin
                        aSourceDS.Next;
                        aSourceDS.CursorPosChanged;
                        CurrText := UpperCase( aSourceDS.FieldByName(aSearchFieldName).AsString );

                        if Pos( SearchText, CurrText ) <> 0
                        then begin
                            Result := True;
                            Break;
                        end;
                    end;
                end
                else begin
                    while not aSourceDS.Bof
                    do begin
                        aSourceDS.Prior;
                        CurrText := UpperCase( aSourceDS.FieldByName(aSearchFieldName).AsString );

                        if Pos( SearchText, CurrText ) <> 0
                        then begin
                            Result := True;
                            Break;
                        end;
                    end;
                end;  //End of Direction Condition
            end
            else begin
                //����������� ����������� ������
                if aSearchParams^.Direction = dtDown
                then begin
                    while not aSourceDS.Eof
                    do begin
                        aSourceDS.Next;
                        CurrText := aSourceDS.FieldByName(aSearchFieldName).AsString;

                        if Pos( SearchText, CurrText ) <> 0
                        then begin
                            Result := True;
                            Break;
                        end;
                    end;
                end
                else begin
                    while not aSourceDS.Bof
                    do begin
                        aSourceDS.Prior;
                        CurrText := aSourceDS.FieldByName(aSearchFieldName).AsString;

                        if Pos( SearchText, CurrText ) <> 0
                        then begin
                            Result := True;
                            Break;
                        end;
                    end;
                end;  //End of Direction Condition
            end;
        end;  //End of PartialType Condition

	finally
		aSourceDS.EnableControls;
	end;

end;  //End of function FindText

end.
