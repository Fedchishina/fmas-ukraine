unit uneLibrary;

{*******************************************************************************
*                                                                              *
* �������� ������ :                                                            *
*                                                                              *
*	uneLibrary                                                                 *
*                                                                              *
* ���������� ������ :                                                          *
*                                                                              *
*	���������� ����������� � ������� ������ ����������, ��������������� �������*
*     ��������� ��� �������� �������.                                          *
*                                                                              *
* Copyright  �  ��� 2005,  �����: ������� �.�                                 *
*                                                                              *
*******************************************************************************}

interface

uses
	SysUtils, Windows, Classes, IBase, uneClasses, uneTypes;

resourcestring

	//����� �������������� �� ������� �������
	sMN_GetFmAbout     = 'GetFmAbout';
	sMN_GetKorToSCH    = 'GetKorToSCH';
	sMN_GetFmRegSCH    = 'GetFmRegSCH';
	sMN_SetKorParams   = 'SetKorParams';
    sMN_PrintJournal   = 'PrintJournal';
    sMN_GetKorDetails  = 'GetKorDetails';
	sMN_GetJO5SchSaldo = 'GetJO5SchSaldo';

type

    { ********************************************** }
    { *** ��������������� ���������� ����������� *** }
    { ********************************************** }

	IneCallExpMethod = interface;

    { ****************************************** }
    { *** ��������������� ���������� ������� *** }
    { ****************************************** }

	TneGetExpMethod = class;

    { *************************************************** }
    { *** ��������������� ���������� �������� ������� *** }
    { *************************************************** }

	TMtd_GetFmAbout     = procedure ( const aFMParams  : TRec_FMParams ); stdcall;
    TMtd_GetKorToSCH    = procedure ( const aDBFMParams: TRec_DBFMParams; const aKorParams: TRec_KorParams         ); stdcall;
	TMtd_GetFmRegSCH    = function  ( const aDBFMParams: TRec_DBFMParams; const aSysOptions: TRec_SysOptions       ): TRec_SysOptions; stdcall;
	TMtd_SetKorParams   = procedure ( const aFMParams  : TRec_FMParams;   var   aKorParamsInfo: TRec_KorParamsInfo ); stdcall;
    TMtd_PrintJournal   = procedure ( const aDBFMParams: TRec_DBFMParams; const aSysOptions: TRec_SysOptions       ); stdcall;
    TMtd_GetKorDetails  = procedure ( const aDBFMParams: TRec_DBFMParams; const aKorParams: TRec_KorParams         ); stdcall;
	TMtd_GetJO5SchSaldo = procedure ( aOwner: TComponent; DBHandle: TISC_DB_HANDLE; Id_user:Int64; ActualDate: TDateTime );stdcall;



	//������������� ��� ��� ����������� ���� ��������������� �� ������ ������
	TEnm_MethodType = ( mtGetFmAbout, mtGetFmRegSCH, mtGetKorToSCH, mtSetKorParams, mtGetKorDetails, mtPrintJournal, mtGetJO5SchSaldo );

	//������ ��� �������� ���������� � �������������� �� ������ ������
	TRec_MethodType = packed record
	  case TEnm_MethodType of
		mtGetFmAbout     : ( GetFmAbout    : TMtd_GetFmAbout     );
		mtGetFmRegSCH    : ( GetFmRegSCH   : TMtd_GetFmRegSCH    );
		mtGetKorToSCH    : ( GetKorToSCH   : TMtd_GetKorToSCH    );
		mtSetKorParams   : ( SetKorParams  : TMtd_SetKorParams   );
		mtPrintJournal   : ( PrintJournal  : TMtd_PrintJournal   );
		mtGetKorDetails  : ( GetKorDetails : TMtd_GetKorDetails  );
		mtGetJO5SchSaldo : ( GetJO5SchSaldo: TMtd_GetJO5SchSaldo );
	end;

	//������ ��� �������� ���������� � �������������� �� ������ ������
	TRec_MethodInfo = packed record
	  MethodName  : String;
	  MethodType  : TEnm_MethodType;
	end;

	{ ********************************************************************** }
	{ **********   *** ���������� ��������� ���� ���������� ***   ********** }
	{ ********************************************************************** }


//INTERFACES

	{ *** ����������: �������� ������(��) ��� ������ ��������������� ������ �� ������ *** }
	IneCallExpMethod = interface( IInterface )
	  ['{855F291E-77F6-4171-8D83-A11671DF8D9F}']
	  function CallExpMethod( const aBPLParams: TPtr_BPLParams; const aMTDParams: TPtr_MTDParams; aResult: Pointer = nil ): Boolean;
	end;

//CLASSES

	{ *** ����������: ���������� ������� ��� �������� ������ *** }
	TneGetExpMethod = class( TAggregatedObject, IneCallExpMethod )
      private
        FResult : Pointer;
        function  GetResult: Pointer;
        procedure SetResult( aValue: Pointer );
	  protected
		function CallExpMethod( const aBPLParams: TPtr_BPLParams; const aMTDParams: TPtr_MTDParams; aResult: Pointer = nil ): Boolean;
	  public
		constructor Create( aAggObjOwner: TComponent; const aBPLParams: TPtr_BPLParams; const aMTDParams: TPtr_MTDParams; aResult: Pointer = nil ); reintroduce;
        property pResult: Pointer read GetResult write SetResult;
	end;

implementation

const

	//������ ������� ��� �������� ���������� � �������������� �� ������� �������
	cArr_MethodInfo : array [0..6] of TRec_MethodInfo = (
		( MethodName: sMN_GetFmAbout;        MethodType: mtGetFmAbout        ),
		( MethodName: sMN_GetFmRegSCH;       MethodType: mtGetFmRegSCH       ),
		( MethodName: sMN_GetKorToSCH;       MethodType: mtGetKorToSCH       ),
		( MethodName: sMN_SetKorParams;      MethodType: mtSetKorParams      ),
		( MethodName: sMN_PrintJournal;      MethodType: mtPrintJournal      ),
		( MethodName: sMN_GetKorDetails;     MethodType: mtGetKorDetails     ),
		( MethodName: sMN_GetJO5SchSaldo;    MethodType: mtGetJO5SchSaldo    ) );

{ TneLoadPackage }
constructor TneGetExpMethod.Create(aAggObjOwner: TComponent; const aBPLParams: TPtr_BPLParams;
  const aMTDParams: TPtr_MTDParams; aResult: Pointer = nil);
begin
	inherited Create( aAggObjOwner );
	CallExpMethod( aBPLParams, aMTDParams );
end;

function TneGetExpMethod.CallExpMethod(const aBPLParams: TPtr_BPLParams; const aMTDParams: TPtr_MTDParams; aResult: Pointer = nil): Boolean;
var
	i, n        : Integer;
    vSize       : Integer;
	vPMHandle   : THandle;
	vExpMethod  : TRec_MethodType;
	vMethodAddr : Pointer;
	vMethodType : TEnm_MethodType;
begin
	try
		if FileExists( aBPLParams.PackageName )
		then begin
			//�������� ��������� �����
			vPMHandle := LoadPackage( aBPLParams.PackageName );

			if vPMHandle > 0
			then begin
				//�������� �������� ����� ��������������� ������
				vMethodAddr := GetProcAddress( vPMHandle, PChar( aBPLParams.MethodName ) );

				if vMethodAddr <> nil
				then begin
					//���������� ��� ��������������� ������
					n := High( cArr_MethodInfo );

					for i := Low( cArr_MethodInfo ) to n
					do begin
						if UpperCase( Trim( cArr_MethodInfo[i].MethodName ) ) =
						   UpperCase( Trim( aBPLParams.MethodName ) )
						then begin
							vMethodType := cArr_MethodInfo[i].MethodType;
							Break;
						end;
					end;

					//�������� ������� ���������������� �����
					if aMTDParams <> nil
					then begin
						case vMethodType of

						  mtGetFmAbout     : begin
											   @vExpMethod.GetFmAbout := vMethodAddr;
											   vExpMethod.GetFmAbout( aMTDParams^.FMParams );
											 end;

						  mtGetFmRegSCH    : begin
											   @vExpMethod.GetFmRegSCH := vMethodAddr;
											   vExpMethod.GetFmRegSCH( aMTDParams^.DBFMParams, aMTDParams^.SysOptions );
											 end;

						  mtGetKorToSCH    : begin
											   @vExpMethod.GetKorToSCH := vMethodAddr;
											   vExpMethod.GetKorToSCH( aMTDParams^.DBFMParams, aMTDParams^.KorParams );
											 end;

						  mtSetKorParams   : begin
											   @vExpMethod.SetKorParams := vMethodAddr;
                                               vSize := SizeOf( TRec_KorParamsInfo );
                                               pResult := AllocMem( vSize );
                                               pResult := @aMTDParams^.KorParamsInfo;
                                               vExpMethod.SetKorParams( aMTDParams^.FMParams, TRec_KorParamsInfo( pResult^ ) );
											 end;

						  mtPrintJournal   : begin
											   @vExpMethod.PrintJournal := vMethodAddr;
											   vExpMethod.PrintJournal( aMTDParams^.DBFMParams, aMTDParams^.SysOptions );
											 end;

						  mtGetKorDetails  : begin
											   @vExpMethod.GetKorDetails := vMethodAddr;
											   vExpMethod.GetKorDetails( aMTDParams^.DBFMParams, aMTDParams^.KorParams );
											 end;

						  mtGetJO5SchSaldo : begin
											   @vExpMethod.GetJO5SchSaldo := vMethodAddr;
											   vExpMethod.GetJO5SchSaldo( aMTDParams^.DBFMParams.Owner, aMTDParams^.DBFMParams.DBHandle, aMTDParams^.SmRzSt.IdUser, aMTDParams^.SmRzSt.ActualDate );
											 end;
						end;
                    end
                    else begin
                        Result := False;
                        Raise EneException.CreateResCode( PResStringRec( @sEInvalidExpMethodParams ) );
                    end;

                end
                else begin
                    Result := False;
                    Raise EneException.Create( sELoadMethod + cTICK + aBPLParams.MethodName + cTICK );
                end;

            end
            else begin
                Result := False;
                Raise EneException.Create( sELoadPackage + cTICK + aBPLParams.PackageName + cTICK );
            end;

        end
        else begin
            Result := False;
            Raise EneException.Create( sEFileNotFound1 + aBPLParams.PackageName + sEFileNotFound2 );
        end;

	finally
		//UnloadPackage( vPMHandle );
	end;
end;

function TneGetExpMethod.GetResult: Pointer;
begin
  Result := FResult;
end;

procedure TneGetExpMethod.SetResult(aValue: Pointer);
begin
  FResult := aValue;
end;

end.
