
{ -$Id: AdressSearchUnit.pas,v 1.1.1.1 2005/07/07 10:35:07 oleg Exp $}
{******************************************************************************}
{               ������������������ ������� ���������� ����������               }

{               (c) �������� ������������ �����������, 2002-2004               }
{******************************************************************************}

{                           ������ "����� ������"                              }
{                               ����� ������                                   }
{                                                  �������������: ���� ������  }

unit AdressSearchUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TAdressSearchForm = class(TForm)
    SearchRadioGroup: TRadioGroup;
    PlaceRadio: TRadioButton;
    StreetRadio: TRadioButton;
    ZIPRadio: TRadioButton;
    SearchEdit: TEdit;
    OkButton: TBitBtn;
    CancelButton: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdressSearchForm: TAdressSearchForm;

implementation

{$R *.DFM}

end.
