unit uLib;

{*******************************************************************************
*                                                                              *
* �������� ������ :                                                            *
*                                                                              *
*	uLib                                                                       *
*                                                                              *
* ���������� ������ :                                                          *
*                                                                              *
*	���������� ������� ������ ����������.                                      *
*                                                                              *
* Copyright  �  ��� 2005,  �����: ������� �.�                                 *
*                                                                              *
*******************************************************************************}


interface

uses SysUtils, Classes, Windows, Registry;

const
	cBYTE_IN_MEGABYTE = 1048576;         //���������� ����, ������������ � 1 ���������
    cFORMAT_FILE_SIZE = '0.000000,';     //������ ������������� ������� �����

type

	{ *** ����������: �������� ���������� ������ ���������� *** }
	TUsrObject = class(TPersistent)
	private
		FFileSize       : Extended;
		FFileDateChange : TDateTime;

		function  GetFileSize       : Extended;
		function  GetFileDateChange : TDateTime;
	public
		procedure PutFileSize       ( aValue: Integer );
		procedure PutFileDateChange ( aValue: Integer );

		property FileSize       : Extended  read GetFileSize;
		property FileDateChange : TDateTime read GetFileDateChange;
	end;

	{ *** ����������: �������� ������ ���������� ��������� ������ *** }
	TUsrStringList = class(TStringList)
	public
		destructor Destroy; override;
	end;

	{ *** ����������: �������� ������ ���������������� ���������� � ��������� ������� *** }
	TUsrRegistry = class(TRegistry)
	public
        constructor Create ( aRootKey: HKey ); overload;
	end;

implementation

{ TUsrStringList }

function TUsrObject.GetFileDateChange: TDateTime;
begin
  Result := FFileDateChange;
end;

function TUsrObject.GetFileSize: Extended;
begin
  Result := FFileSize;
end;

procedure TUsrObject.PutFileDateChange(aValue: Integer);
begin
  FFileDateChange := FileDateToDateTime( aValue );
end;

procedure TUsrObject.PutFileSize(aValue: Integer);
begin
  FFileSize := aValue/cBYTE_IN_MEGABYTE;
end;

destructor TUsrStringList.Destroy;
var
    i, n : Integer;
begin
    n := Count - 1;

    //����������� �������, ���������� ��� ��������, ��������� � ���������� ������
    for i := 0 to n
    do begin
        if Assigned( Objects[i] )
        then begin
            Objects[i].Free;
            Objects[i] := nil;
        end;
    end;

    //���������� ��������� ������
    inherited Destroy;
end;

{ TUsrRegistry }

constructor TUsrRegistry.Create(aRootKey: HKey);
begin
    inherited Create;
    RootKey := aRootKey
end;

end.
