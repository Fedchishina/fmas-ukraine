//***********************************************************************
//* ������ "�����������"                                                *
//* ����, ��������� ��������� �����                                     *
//* ��������: ���������� �.�. 2004-2005 �.                              *
//***********************************************************************
unit st_sys_Pfio_SelectThread;

interface

uses
  Classes;

type
  TPfio_SelectThread = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation
 uses St_Ptio_Registration;

procedure TPfio_SelectThread.Execute;
begin
Synchronize(Registration_Form.SelectAll);
end;

end.
