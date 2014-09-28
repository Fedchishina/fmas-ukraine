unit RegUnit;

interface

uses registry, Controls, Forms;

const REG_PATH = '\Software\MainBook\';
const Vasyan=2;
procedure e2SaveToReg;                    // ���������� ������� ����� � ������
procedure e2RestFromReg(Sender:TObject);  // �������������� ����� �� �������

implementation

//---------------------------------------
//
// ���������� ��������� ����� � �������
//
//---------------------------------------

procedure e2SaveToReg;
var
  Reg : TRegIniFile;
  cPath : String;

  procedure SaveR(cPath : String; Con : TControl);
  var
    cPathSave : String;
    nI, nJ : Integer;
  begin
    // ������� � ��������� ���� ��� Control
    cPathSave := cPath + Con.Name+'\';
    with Reg do begin
      WriteInteger(cPathSave,'Left', Con.Left);
      WriteInteger(cPathSave,'Top', Con.Top);
      WriteInteger(cPathSave,'Width', Con.Width);
      WriteInteger(cPathSave,'Height', Con.Height);
      // ��������� ���������� ��������� �� �����
      if Con is TWinControl then begin
        nJ := TWinControl(Con).ControlCount;
        if nJ > 0 then
          for nI := 0 to nJ - 1 do
            SaveR(cPath, TWinControl(Con).Controls[nI]);
      end;
    end;
  end;

begin
  // ���������� ����� ������� ��� ����������
  cPath := REG_PATH+Screen.ActiveForm.Name+'\';
  Reg := TRegIniFile.Create('');
  Reg.EraseSection(cPath);
  SaveR(cPath,Screen.ActiveForm);
  Reg.Free;
end;

//---------------------------------------
//
// �������������� ��������� ����� �� �������
//
//---------------------------------------

procedure e2RestFromReg(Sender:TObject);
var
  Reg : TRegIniFile;
  cPath : String;

  procedure RestR(cPath: String; Con: TControl);
  var
    cPathSave : String;
    nI, nJ : Integer;
  begin
    // ������� � ��������� ���� ��� Control
    cPathSave := cPath + Con.Name+'\';
    with Reg do begin
      nI := ReadInteger(cPathSave,'Left', -1);
      if nI <> -1 then
        Con.Left := nI;
      nI := ReadInteger(cPathSave,'Top', -1);
      if nI <> -1 then
        Con.Top := nI;
      nI := ReadInteger(cPathSave,'Width', -1);
      if nI <> -1 then
        Con.Width := nI;
      nI := ReadInteger(cPathSave,'Height', -1);
      if nI <> -1 then
        Con.Height := nI;
      // ��������� ���������� ��������� �� �����
      if Con is TWinControl then begin
        nJ := TWinControl(Con).ControlCount;
        if nJ > 0 then
          for nI := 0 to nJ - 1 do
            RestR(cPath, TWinControl(Con).Controls[nI]);
      end;
    end;
  end;

begin
  // ���������� ����� �������
  cPath := REG_PATH + TControl(Sender).Name+'\';
  Reg := TRegIniFile.Create('');
  RestR(cPath, TControl(Sender));
  Reg.Free;
end;

end.


