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

uses Windows, Classes, SysUtils, Dialogs, Controls, uTypes;

	procedure LogException       ( const aFileName: TFileName );
	procedure SortFileList       ( var aFileList: TStringList; aSortMode: TSortMode = smAlphabetically );
	procedure ExtractKeyBlock    ( var aKeyBlock: String; var aSeparatorCount: Integer; const aSeparatorChar: String );
	procedure CreateMyProcess    ( const aAppName, aCommandLine: PAnsiChar; aWindowState: Word );
	procedure SetDirEndDelimiter ( var aDirPath: String );

	function  RenameScript       ( var aFileName: String; const aKeyExpr, aSeparatorChar, aErrorChar : String; const aIsValid, aFullRename: Boolean; const aPrefixCharCount: Integer ): Boolean;
	function  GetScriptNames     ( const aScriptDir, aSeparatorChar, aKeyExpr: String; const aPrefixCharCount: Integer; var aScriptNames: TStringList ): Boolean;
	function  GetScriptStatus    ( const aScrStatus: TScriptStatus ): String;
    function  GetScriptNamesExt  ( const aScriptDir, aSeparatorChar, aKeyExpr: String; const aPrefixCharCount: Integer; const aBackUpDate: TDate; var aScriptNames: TStringList ): Boolean;

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

  try

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
  except
    LogException( cERROR_FILE_NAME );
  end;

end;  //End of procedure CreateMyProcess

procedure SortFileList( var aFileList: TStringList; aSortMode: TSortMode = smAlphabetically );

{*******************************************************************************
*                                                                              *
* �������� ��������� :                                                         *
*                                                                              *
*	SortFileList                                                               *
*                                                                              *
* ���������� ��������� :                                                       *
*                                                                              *
* ��������� ��������� ������ ��� ������.                                      *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aFileList - ������ ��� ������, ���������� ����������.                  *
*      aSortMode - �������� ����������.                                        *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*      aFileList - ��������������� ������ ��� ������.                         *
*                                                                              *
*******************************************************************************}
begin

  case aSortMode of

    smAlphabetically : begin
                         aFileList.Sorted := True;
                       end;

    smDate           : begin
                       end;

    smOrder          : begin
                       end;
  end;

end;  //End of procedure SortFileList

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
    Counter   : Integer;
    CharIndex : Integer;
begin

  try
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
  except
    LogException( cERROR_FILE_NAME );
  end;

end;  //End of procedure ExtractKeyBlock

function RenameScript( var aFileName: String; const aKeyExpr, aSeparatorChar, aErrorChar: String; const aIsValid, aFullRename: Boolean; const aPrefixCharCount: Integer ): Boolean;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	RenameScript                                                               *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
* �-��� ��������������� ���� ������� � ������������ � �������� ��������.       *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aIsValid         - �������, ������������ ������� �� ��� �������� ������ *
*      aFullRename      - �������, ����������� ����� �� ��������� �����������- *
*                         ���� ������                                          *
*      aKeyExpr         - ���� ��� ���������  �������� ��������, ������������  *
*                         �������� ������ ������ ��������.                     *
*      aFileName        - ������ ���� �  ����� �������.                        *
*      aErrorChar       - "�����������" ������ � ����� ����� �������, �������- *
*                         ���� �� ��, ��� ������ ������ ��� ������� � ��������*
*      aSeparatorChar   - ������-�����������, ������������ ��� ���������� ���- *
*                         ��� ��������.                                        *
*      aPrefixCharCount - ���������� ������ �������� � ������ ������ ��������, *
*                         �� ������������ ��� �������.                         *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*      Result           - ��������� �������������� �����.                      *
*                                                                              *
* RESULT: Boolean.                                                             *
*                                                                              *
*	���� ���� ������� ������� ������������, �� ���������                       *
* ������������ �������� - ������, ���� ��� - ����.                             *
*                                                                              *
*******************************************************************************}
var
	i, j, m, n   : Integer;
	Delta        : String;
	IsValid      : Boolean;
	TmpBlock     : String;
	KeyBlock     : String;
	KeyIndex     : Integer;
	SepCount     : Integer;
	KeyBlocks    : TStringList;
	CharIndex    : Integer;
	FmtSettings  : TFormatSettings;
	TmpFileName  : String;
	DelCharCount : Integer;
begin

  try

	try
		//���������: �� ��� �� ����� � ������� ���� ������� �� ����� ������������
		if FileExists( aFileName )
		then begin
			TmpFileName  := ExtractFileName( aFileName );
			DelCharCount := aPrefixCharCount;
			KeyBlock := TmpFileName;

			//�������� ���������� ���� ����� ����� �������� ������� � ����� ��� ����������
			FmtSettings.DateSeparator   := cDATE_SEPARATOR;
			FmtSettings.ShortDateFormat := cFORMAT_DATE_TO_STR;
			CharIndex := Pos( aSeparatorChar, Copy( KeyBlock, 1, DelCharCount ) );
			Delete( KeyBlock, CharIndex, Length( KeyBlock ) - CharIndex + 1 );

			//��������� � ������� ����� ����� ������ ����������� ����
			Delta := IntToStr( DaysBetween( Date, StrToDate( KeyBlock, FmtSettings ) ) );

			if StrToInt( Delta ) < 10
			then
				Delta := '0' + Delta;

			KeyBlocks := TStringList.Create;

			//�������� �� ����� ����� ����� �������� ��������
			repeat
				KeyBlock := TmpFileName;
				Delete( KeyBlock, 1, DelCharCount );
				ExtractKeyBlock( KeyBlock, SepCount, aSeparatorChar );
				KeyIndex := Pos( aKeyExpr, KeyBlock );
				KeyBlocks.Add( KeyBlock );
				DelCharCount := DelCharCount + Length( KeyBlock ) + SepCount;
			until ( DelCharCount >= Length( TmpFileName ) );

			n := KeyBlocks.Count - 3;
			KeyIndex := Pos( KeyBlocks.Strings[1], TmpFileName ) + Length( KeyBlocks.Strings[1] );

			//��������� ��� ������� � ������ ���������� ��� ����������
			if aIsValid
			then
				TmpBlock := aKeyExpr + Delta
			else
				TmpBlock := aErrorChar + aKeyExpr + Delta;

			TmpBlock := aSeparatorChar + aSeparatorChar + TmpBlock;

			//������� ����� ������ �������� �������� ������� ��� ������� �����(����� ������ ������������� � ���������� �������)
			for i := 2 to n do
			begin
				m := Length( KeyBlocks.Strings[i] );

				//�������� ���� �������� ������, ���������� ��� �����
				for j := 1 to m
				do
					//������� � �������� ������������������ ���� � ����� �������� ��������
					if KeyBlocks.Strings[i][j] in cDIGITS
					then begin
						KeyBlock := KeyBlocks.Strings[i];
						Delete( KeyBlock, j, Length( KeyBlock ) - j + 1 );
						Break;
					end;

				//�������� ������������������ ��������, ����������� �� ������ ��� ���������� �������
				Delete( KeyBlock, Pos( aErrorChar, KeyBlock ), Length( aErrorChar ) );

				//��������� ���������� ������� ���������� ������, ����������� �� ���� ���������� �������
				if KeyBlock < aKeyExpr
				then begin
					KeyIndex := Pos( KeyBlocks.Strings[i], TmpFileName ) + Length( KeyBlocks.Strings[i] );
				end;

			end;

			//��������� � ��� ����� ������� ���-�� ����, ��������� � ������� ��� ��������
			Insert( TmpBlock, TmpFileName, KeyIndex );

			KeyIndex := Pos( aKeyExpr, KeyBlocks.Strings[0] );
			KeyBlock := KeyBlocks.Strings[1];
			IsValid  := True;

			//���������: ��������� �� ��������������� ����� ��� ��������� ��������� �� 2-�� �����
			n := KeyIndex + Length( aKeyExpr ) - 1 ;

			for i := KeyIndex to n do
				if KeyBlock[i] <> cEMPTY_CHAR
				then begin
					IsValid := False;
					Break;
				end;

			//���������: �������� �� ������� �������������� ������ ������?
			if aFullRename
			then begin
				//��������� �� 2-�� ���� �������� ���������
				CharIndex := Pos( KeyBlocks.Strings[1], TmpFileName );

				if IsValid
				then
					Delete( TmpFileName, CharIndex + KeyIndex - 1, Length( aKeyExpr ) );

				Insert( aKeyExpr, TmpFileName, CharIndex + KeyIndex - 1 );
			end;

            //���������� �������������� "�����" ��� �������
			aFileName := ExtractFilePath( aFileName ) + TmpFileName;
			Result := True;

        end
        else
            Result := False;

    finally
      KeyBlocks.Free;
    end;

  except
    LogException( cERROR_FILE_NAME );
  end;

end; //End of procedure RenameScript

function GetScriptNamesExt ( const aScriptDir, aSeparatorChar, aKeyExpr: String; const aPrefixCharCount: Integer; const aBackUpDate: TDate; var aScriptNames: TStringList ): Boolean;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	GetScriptNamesExt                                                          *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
* ������������ ������� ��� ������ ��������, ������� ������ ���� ���������.    *
*                                                                              *
* IN:                                                                          *
*      aKeyExpr         - ���� ��� ���������  �������� ��������, ������������  *
*                         �������� ������ ������ ��������.                     *
*      aScriptDir       - ���� � �����, ���������� ����� �������� ��� �������- *
*                         �����.                                               *
*      aSeparatorChar   - ������-�����������, ������������ ��� ���������� ���- *
*                         ��� ��������.                                        *
*      aBackUpDate      - ���� ������ "�������" ������.                        *
*      aScriptNames     - ������ ��� ������ ��������, ���������� ������������.*
*      aPrefixCharCount - ���������� ������ �������� � ������ ������ ��������, *
*                         �� ������������ ��� �������.                         *
*                                                                              *
* OUT:                                                                         *
*      aScriptNames     - ������ ��� ������ ��������, ���������� ������������.*
*                                                                              *
* RESULT: Boolean.                                                             *
*                                                                              *
*	���� ���� �� ���� ���� ������� ��� ������������ ������, �� ���������       *
* ������������ �������� - ������, ���� ��� - ����.                             *
*                                                                              *
*******************************************************************************}

var
	i, n             : Integer;
	Index            : Integer;
	FileRec          : TSearchRec;
	KeyBlock         : String;
	KeyBlocks        : TStringList;
	KeyIndex         : Integer;
	SearchRes        : Integer;
	TmpFileName      : String;
	FmtSettings      : TFormatSettings;
	DelCharCount     : Integer;
    ScriptExists     : Boolean;
	DaysCountScr     : Integer;
	DateCreateScr    : TDate;
	DateExecuteScr   : TDate;
	SeparatorCount   : Integer;
	StrDateCreteScr  : String;
begin

  try

	try
		//�������� ����� ���� �� ���� ���� �������
		SearchRes := FindFirst( aScriptDir + cSCRIPTS_MASK, faAnyFile, FileRec );

		//���� �� ������ �� ���� ������
		if SearchRes <> 0
		then begin
			Result := False;
			Exit;
		end
        else begin
            aScriptNames.Clear;
            KeyBlocks := TStringList.Create;
			FmtSettings.DateSeparator   := cDATE_SEPARATOR;
			FmtSettings.ShortDateFormat := cFORMAT_DATE_TO_STR;
        end;

		//�������� ����� ��� ������������ ����� ��������
		while ( SearchRes = 0 ) do
		begin
			TmpFileName := FileRec.Name;

			//�������� ���� �������� �������
			StrDateCreteScr := Copy( TmpFileName, 1, cDATE_DIGITS_COUNT );
			DateCreateScr := StrToDate( StrDateCreteScr, FmtSettings );

			//�������� ���� �������� + ���������� ����� �������
			Delete( TmpFileName, 1, aPrefixCharCount );
            KeyBlocks.Clear;

            //�������� �� ����� ����� ����� �������� ��������
            repeat
                KeyBlock := TmpFileName;
                ExtractKeyBlock( KeyBlock, SeparatorCount, aSeparatorChar );
                KeyBlocks.Add( KeyBlock );
                DelCharCount := Length( KeyBlock ) + SeparatorCount;
                Delete( TmpFileName, 1, DelCharCount );
            until ( Length( TmpFileName ) = 0 );

            //����������� �������� �����, ���������� ���, ����������� � �� ���������� ���������� � ���� ���������� �������
			n := KeyBlocks.Count - 3;
            ScriptExists := False;

			//���������: ����� �� ������ � �����-���� ����������?
            for i := 2 to n
            do begin
                Index    := Pos( cUPDATE_EXPR, KeyBlocks.Strings[i] );
                KeyIndex := Pos( aKeyExpr, KeyBlocks.Strings[i] );

                //��������� ���� ���������� �������, �� ��������� �� � ���� ����������
                if ( Index = 0 ) AND ( KeyIndex <> 0 )
                then begin
                    ScriptExists := True;
                    KeyBlock := KeyBlocks.Strings[i];
					Delete( KeyBlock, 1, KeyIndex + Length( aKeyExpr ) - 1 );
                    DaysCountScr := StrToInt( KeyBlock );
                    DateExecuteScr := DateCreateScr + DaysCountScr;
                end;

            end;

            //���������� ��� ����� �������, ����������� ������������
            if ScriptExists AND ( DateExecuteScr > aBackUpDate )
            then begin
                aScriptNames.Add( FileRec.Name );
            end;

            SearchRes := FindNext( FileRec );
        end;

        aScriptNames.Sorted := True;

        //��������� ������������ �������� ���������
        if aScriptNames.Count > 0
        then begin
            Result := True;
        end;

	finally
		FindClose( FileRec );

        if Assigned( KeyBlocks )
        then
            FreeAndNil( KeyBlocks );
	end;

  except
    Result := False;
	LogException( cERROR_FILE_NAME );
  end;

end; //End of function GetScriptNamesExt

function GetScriptNames( const aScriptDir, aSeparatorChar, aKeyExpr: String; const aPrefixCharCount: Integer; var aScriptNames: TStringList ): Boolean;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	GetScriptNames                                                             *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
* ������������ ������ ��� ������ ��������, ������� ������ ���� ���������.     *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aKeyExpr         - ���� ��� ���������  �������� ��������, ������������  *
*                         �������� ������ ������ ��������.                     *
*      aScriptDir       - ���� � �����, ���������� ����� �������� ��� �������- *
*                         �����.                                               *
*      aScriptNames     - ������ ��� ������ ��������, ���������� ������������.*
*      aSeparatorChar   - ������-�����������, ������������ ��� ���������� ���- *
*                         ��� ��������.                                        *
*      aPrefixCharCount - ���������� ������ �������� � ������ ������ ��������, *
*                         �� ������������ ��� �������.                         *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*      aScriptNames     - ������ ��� ������ ��������, ���������� ������������.*
*                                                                              *
* RESULT: Boolean.                                                             *
*                                                                              *
*	���� ���� �� ���� ���� ������� ��� ���������� ������, �� ���������         *
* ������������ �������� - ������, ���� ��� - ����.                             *
*                                                                              *
*******************************************************************************}

var
	FileRec      : TSearchRec;
	SearchRes    : Integer;
	CharIndex    : Integer;
	TmpFileName  : String;
	DelCharCount : Integer;
begin

  try

	try
		//�������� ����� ���� �� ���� ���� �������
		SearchRes := FindFirst( aScriptDir + cSCRIPTS_MASK, faAnyFile, FileRec );

		if SearchRes = 0
		then
			Result := True
		else
			Result := False;

		//�������� ����� ��� ������������ ����� ��������
		while ( SearchRes = 0 ) do
		begin
			//�������� 1-�� ���� �������� �������� �� ����� ����� �������
			TmpFileName := FileRec.Name;
			Delete( TmpFileName, 1, aPrefixCharCount );
			ExtractKeyBlock( TmpFileName, DelCharCount, aSeparatorChar );
			CharIndex := Pos( aKeyExpr, TmpFileName );

			if CharIndex > 0
			then begin
				//�������� 2-�� ���� �������� �������� �� ����� ����� �������
				DelCharCount := aPrefixCharCount + Length( TmpFileName ) + DelCharCount;
				TmpFileName := FileRec.Name;
				Delete( TmpFileName, 1, DelCharCount );
				ExtractKeyBlock( TmpFileName, DelCharCount, aSeparatorChar );
				CharIndex := Pos( aKeyExpr, TmpFileName );

				if CharIndex = 0
				then begin
					//���������� ��� ����� �������, ������� ����� ���������
					aScriptNames.Add( FileRec.Name );
				end;

			end;

			SearchRes := FindNext( FileRec );
		end;

		FindClose( FileRec );
		aScriptNames.Sorted := True;

	finally
	end;

  except
	LogException( cERROR_FILE_NAME );
  end;

end; //End of function GetScriptNames

function GetScriptStatus ( const aScrStatus: TScriptStatus ): String;

{*******************************************************************************
*                                                                              *
* �������� ������� :                                                           *
*                                                                              *
*	GetScriptStatus                                                            *
*                                                                              *
* ���������� ������� :                                                         *
*                                                                              *
* ���������� � ���� ������ ��������� ���������� ��������.                      *
*                                                                              *
* IN:                                                                          *
*                                                                              *
*      aScrStatus - ��������, ���������� ��������� ���������� ��������.        *
*                                                                              *
* OUT:                                                                         *
*                                                                              *
*      RESULT     - ������, ���������������� ��������� ���������� ��������.    *
*                                                                              *
*******************************************************************************}
begin
  Result := cSCR_STATUS[ Ord( aScrStatus ) ];
end; //End of function GetScriptStatus

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

  if Pos( cSEPARATOR_FOLDER_WIN, aDirPath ) <> 0
  then begin
	  if aDirPath[ Length( aDirPath ) ] <> cSEPARATOR_FOLDER_WIN
	  then
		  aDirPath := aDirPath + cSEPARATOR_FOLDER_WIN
  end
  else
	  if aDirPath[ Length( aDirPath ) ] <> cSEPARATOR_FOLDER_UNX
	  then
		  aDirPath := aDirPath + cSEPARATOR_FOLDER_UNX;

end; //End of procedure SetDirEndDelimiter

end.
