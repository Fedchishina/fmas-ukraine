{
  �������� ����������� �������� (ShowMessage, etc) � ����, �����������
  �������� ��������� �� MS Office 2000.

  (�) 2002, HyperSoft, ����� ��������.
}
unit HSDialogs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

// ������� ������������ �������� ������������ ����
type
  TTrianglePosition = (tpNone, //����
                       tpLeftTop, tpLeftBottom, //�� ����� �������, ������ ��� �����
                       tpTopLeft, tpTopRight,  //�� ������� �������, ����� ��� ������
                       tpRightTop, tpRightBottom, //�� ������ �������, ������ ��� �����
                       tpBottomLeft, tpBottomRight); //�� ������ �������, ����� ��� ������

  TfRgnDialog = class(TForm)
  private
    FMessageText : TLabel;
    FRegion : HRGN;
    FTrianglePosition: TTrianglePosition;
    FXCursorOffset,
    FYCursorOffset : Integer;
    procedure FreeCurrentRegion();
    procedure SetTrianglePosition(const Value: TTrianglePosition);
    procedure WMNCHitTest (var Message : TWMNCHitTest); message WM_NCHITTEST;
    procedure HelpButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    { ������� ������� �������� ������������ ������ ���� Control'� �� ����������� }
    property  XCursorOffset : Integer read FXCursorOffset write FXCursorOffset;
    { ������� ������� �������� ������������
      �������� ��� ������� ���� Control'� �� �����������.  }
    property  YCursorOffset : Integer read FYCursorOffset write FYCursorOffset;
  protected
    procedure Paint; override;
  public
    procedure AlignWindow (AEditorControl : TControl);
    { ������� ������������ �������� }
    property  TrianglePosition : TTrianglePosition read FTrianglePosition
                          write SetTrianglePosition default tpNone;
    constructor CreateNew (AOwner : TComponent); reintroduce;
    destructor  Destroy; override;
  end;

var
  RoundRectCurve : Integer = 20; { ������ ������� ��� ���������� ����� }
  TriangleWidth : Integer = 10;  { ������ ������������ �������� }
  TriangleHeight : Integer = 20; { ������ ������������ �������� }
  TriangleIndent : Integer = 40; { �������� ������������ ��������
                                    ������������ ���� ���� }
var
  MessageColor : TColor;           { ���� ����� ��������� }

function CreateHSMessageDialog (const Msg: string; DlgType: TMsgDlgType;
                                Buttons: TMsgDlgButtons;
                                { Control, �� ������� ��������� ������� }
                                AEditorControl : TControl = nil;
                                { ������� �������� ������������ ������ ���� Control }
                                AXCursorOffset : Integer = 20;
                                { ������� �������� ������������
                                 �������� (��� �������) ���� Control }
                                AYCursorOffset : Integer = 2): TCustomForm;

function HSMessageDlg(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint;
  AEditorControl : TControl = nil;
  AXCursorOffset : Integer = 20;
  AYCursorOffset : Integer = 2): Integer;

procedure HSShowMessage(const Msg: string;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2);

procedure HSShowMessageFmt(const Msg: string; Params : array of const;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2);

procedure HSShowError(const Msg: string;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2);

procedure HSShowErrorFmt(const Msg: string; Params : array of const;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2);

procedure HSShowWarning(const Msg: string;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2);

procedure HSShowWarningFmt(const Msg: string; Params : array of const;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2);

procedure HSShowInfo(const Msg: string;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2);

procedure HSShowInfoFmt(const Msg: string; Params : array of const;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2);

function HSConfirmMessage(const Msg: string;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2) : Boolean;

function HSConfirmMessageFmt(const Msg: string; Params : array of const;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2) : Boolean;

function HSAskYesNoCancel(const Msg: string;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2) : Integer;

function HSAskYesNoCancelFmt(const Msg: string; Params : array of const;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2) : Integer;

{
  ��������� ������, ����� ������ Consts.pas.
  ��� ��� ��������� ���������� �� ������������� ���������, �� � ��������� ������
  �� ��������� ������� ��������. Translation Manager ����� ��������� ����
  ���������� :-)
}
resourcestring
  SHSMsgDlgYes = '��';
  SHSMsgDlgNo = '���';
  SHSMsgDlgOK = 'OK';
  SHSMsgDlgCancel = '������';
  SHSMsgDlgAbort = '��������';
  SHSMsgDlgRetry = '���������';
  SHSMsgDlgIgnore = '����������';
  SHSMsgDlgAll = '���';
  SHSMsgDlgNoToAll = '��� ��� ����';
  SHSMsgDlgYesToAll = '�� ��� ����';
  SHSMsgDlgHelp = '�������';

implementation
uses
  Consts, Math, ExtCtrls, HSFlatButton;

{ TfRgnDialog }

destructor TfRgnDialog.Destroy;
begin
  FreeCurrentRegion;
  inherited;
end;

procedure TfRgnDialog.FreeCurrentRegion;
begin
  if FRegion <> 0 then begin
    SetWindowRgn (Handle, 0, true);
    DeleteObject (FRegion);
    FRegion := 0;
  end;
end;

// ��� ��� � ��� �� ����� �������, � ������� ����� ���������
// ������, �� ��������� �� ������� OnActivate �����
procedure TfRgnDialog.FormActivate(Sender: TObject);
var
  FTriangle : array[0..2] of TPoint;
  RectRgn, TriRgn : HRGN;
  R : TRect;
begin
  FreeCurrentRegion();
  R := ClientRect;
  if TrianglePosition <> tpNone then begin
    { ������, � ������� ����� ������� �������. ��� ����� ���������� ��������
      �� �������� }
    FRegion := CreateRectRgn(0,0,R.Right,R.Bottom);
    case TrianglePosition of
    tpBottomLeft, tpBottomRight:
      Dec(R.Bottom, TriangleHeight);
    tpTopLeft, tpTopRight:
      Inc(R.Top, TriangleHeight);
    tpLeftTop, tpLeftBottom:
      Inc(R.Left, TriangleHeight);
    tpRightTop, tpRightBottom:
      Dec(R.Right, TriangleHeight);
    end;
    { �������� �������������� �� ������������ ������ }
    with R do
      RectRgn := CreateRoundRectRgn (Left, Top, Right, Bottom,
                                     RoundRectCurve, RoundRectCurve);
    { �������� ������������ �������� }
    case TrianglePosition of
    tpBottomLeft:
      begin
        FTriangle[0] := Point(R.Left + TriangleIndent, R.Bottom-1);
        FTriangle[1] := Point(R.Left + TriangleIndent,
                              R.Bottom-1 + TriangleHeight);
        FTriangle[2] := Point(R.Left + TriangleIndent + TriangleWidth,
                              R.Bottom-1);
      end;
    tpBottomRight:
      begin
        FTriangle[0] := Point(R.Right - TriangleIndent, R.Bottom-1);
        FTriangle[1] := Point(R.Right - TriangleIndent,
                              R.Bottom-1 + TriangleHeight);
        FTriangle[2] := Point(R.Right - TriangleIndent - TriangleWidth,
                              R.Bottom-1);
      end;
    tpTopLeft:
      begin
        FTriangle[0] := Point(R.Left + TriangleIndent, R.Top);
        FTriangle[1] := Point(R.Left + TriangleIndent, R.Top - TriangleHeight);
        FTriangle[2] := Point(R.Left + TriangleIndent + TriangleWidth, R.Top);
      end;
    tpTopRight:
      begin
        FTriangle[0] := Point(R.Right - TriangleIndent, R.Top);
        FTriangle[1] := Point(R.Right - TriangleIndent, R.Top - TriangleHeight);
        FTriangle[2] := Point(R.Right - TriangleIndent - TriangleWidth, R.Top);
      end;
    tpLeftTop:
      begin
        FTriangle[0] := Point(R.Left, R.Top + TriangleIndent);
        FTriangle[1] := Point(R.Left - TriangleHeight, R.Top + TriangleIndent);
        FTriangle[2] := Point(R.Left, R.Top + TriangleIndent + TriangleWidth);
      end;
    tpLeftBottom:
      begin
        FTriangle[0] := Point(R.Left, R.Bottom - TriangleIndent);
        FTriangle[1] := Point(R.Left - TriangleHeight,
                              R.Bottom - TriangleIndent);
        FTriangle[2] := Point(R.Left,
                              R.Bottom - TriangleIndent - TriangleWidth);
      end;
    tpRightTop:
      begin
        FTriangle[0] := Point(R.Right-1, R.Top + TriangleIndent);
        FTriangle[1] := Point(R.Right-1 + TriangleHeight,
                              R.Top + TriangleIndent);
        FTriangle[2] := Point(R.Right-1,
                              R.Top + TriangleIndent + TriangleWidth);
      end;
    tpRightBottom:
      begin
        FTriangle[0] := Point(R.Right-1, R.Bottom - TriangleIndent);
        FTriangle[1] := Point(R.Right-1 + TriangleHeight,
                              R.Bottom - TriangleIndent);
        FTriangle[2] := Point(R.Right-1,
                              R.Bottom - TriangleIndent - TriangleWidth);
      end;
    end;
    TriRgn := CreatePolygonRgn(FTriangle, 3, WINDING);
    if TriRgn = 0 then
      RaiseLastWin32Error;
    if CombineRgn(FRegion,RectRgn,TriRgn,RGN_OR) = ERROR then
      RaiseLastWin32Error;
  end else begin
    { �������� ���, ������ ������������� �� ������������ ������ }
    with R do
      RectRgn := CreateRoundRectRgn (Left, Top, Right, Bottom,
                   RoundRectCurve, RoundRectCurve);
    FRegion := RectRgn;
  end;
  if FRegion <> 0 then
    SetWindowRgn (Handle, FRegion, true);
end;

procedure TfRgnDialog.Paint;
//  ������ ��������� ������ �����
var
 HFrameBrush : HBRUSH;
 DC : HDC;
 Rgn : HRGN;
begin
  { ���� ��������� - ������ }
  HFrameBrush := CreateSolidBrush(clBlack);
  DC := GetWindowDC(Handle);
  { ������� ������, ���� ����� ������������ ������� ����. ��������� � �������,
    �� ������ ���������� ���� �������� ������. }
  Rgn := CreateRectRgnIndirect (BoundsRect);
  GetWindowRgn(Handle, Rgn);
  try
    FrameRgn (DC, Rgn, HFrameBrush, 1, 1);
  finally
    ReleaseDC(Handle, DC);
    DeleteObject(HFrameBrush);
    DeleteObject(Rgn);
  end;
end;

procedure TfRgnDialog.SetTrianglePosition(const Value: TTrianglePosition);
var I : Integer;
begin
  if (FTrianglePosition <> Value) then begin
    FTrianglePosition := Value;
    case FTrianglePosition of
    tpBottomLeft, tpBottomRight, // � ���� ������ ������������� ������ �����
                                 // �� ���� ��������� ������������.
    tpTopLeft, tpTopRight:
      begin
        Height := Height + TriangleHeight;
        if FTrianglePosition in [tpTopLeft, tpTopRight] then
          for I:=0 to Pred(ControlCount) do
            with Controls[I] do
              Top := Top + TriangleHeight;
      end;
    tpLeftTop, tpLeftBottom, tpRightTop, tpRightBottom:
      begin
        Width := Width + TriangleHeight; //� ���� ������ ������������� ������ �����
                                         //�� ���� ��������� ������������.
        //� ���������� �������� �� �����������
        if FTrianglePosition in [tpLeftTop, tpLeftBottom] then begin
          for I:=0 to Pred(ControlCount) do
            with Controls[I] do
              Left := Left + TriangleHeight DIV 2;
        end else begin
          for I:=0 to Pred(ControlCount) do
            with Controls[I] do
              Left := Left - TriangleHeight DIV 2;
        end;
      end;
    end;
    RecreateWnd(); // ��� ��� � ��� �� ����� �������, � ������� ����� ���������
                   // ������, �� ��������� �� ������� OnActivate
  end;
end;

{
  ��� �������� ����� �� ����� ������������ ��������� WM_NCHITTEST �
  ������������ ��� ����� ��� �������� ���������.
}
procedure TfRgnDialog.WMNCHitTest(var Message: TWMNCHitTest);
begin
  //Message.Result := HTCAPTION;
end;

{ ������� ����������� �� Borland'������� Dialogs.pas }
function GetAveCharSize(Canvas: TCanvas): TPoint;
var
  I: Integer;
  Buffer: array[0..51] of Char;
begin
  for I := 0 to 25 do
    Buffer[I] := Chr(I + Ord('A'));
  for I := 0 to 25 do
    Buffer[I + 26] := Chr(I + Ord('a'));
  GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
  Result.X := Result.X div 52;
end;

{
  ����������� ���� ���� ������� ����� �� ����� ����������� �������
  CreateMessageDialog �� Borland'������� Dialogs.pas
}
var
  IconIDs: array[TMsgDlgType] of PChar = (IDI_EXCLAMATION, IDI_HAND,
    IDI_ASTERISK, IDI_QUESTION, nil);
  ButtonCaptions: array[TMsgDlgBtn] of Pointer = (
    @SHSMsgDlgYes, @SHSMsgDlgNo, @SHSMsgDlgOK, @SHSMsgDlgCancel,
    @SHSMsgDlgAbort, @SHSMsgDlgRetry, @SHSMsgDlgIgnore, @SHSMsgDlgAll,
    @SHSMsgDlgNoToAll, @SHSMsgDlgYesToAll, @SHSMsgDlgHelp);
  ButtonNames: array[TMsgDlgBtn] of String = (
    'Yes', 'No', 'OK', 'Cancel', 'Abort',
    'Retry', 'Ignore', 'All', 'NoToAll', 'YesToAll',
    'Help');
  ModalResults: array[TMsgDlgBtn] of Integer = (
    mrYes, mrNo, mrOk, mrCancel, mrAbort, mrRetry, mrIgnore, mrAll, mrNoToAll,
    mrYesToAll, 0);
var
  ButtonWidths : array[TMsgDlgBtn] of integer;  // �������������� ������ ���
                                                // ����������

function CreateHSMessageDialog (const Msg: string; DlgType: TMsgDlgType;
                                Buttons: TMsgDlgButtons;
                                AEditorControl : TControl;
                                AXCursorOffset : Integer;
                                AYCursorOffset : Integer): TCustomForm;
const
  mcHorzMargin = 8;
  mcVertMargin = 8;
  mcHorzSpacing = 10;
  mcVertSpacing = 10;
  mcButtonWidth = 50;
  mcButtonHeight = 14;
  mcButtonSpacing = 4;
var
  AForm : TfRgnDialog; { ��������� ����� }
  DialogUnits: TPoint;
  HorzMargin, VertMargin, HorzSpacing, VertSpacing, ButtonWidth,
  ButtonHeight, ButtonSpacing, ButtonCount, ButtonGroupWidth,
  IconTextWidth, IconTextHeight, X, ALeft: Integer;
  B, DefaultButton, CancelButton: TMsgDlgBtn;
  IconID: PChar;
  TextRect: TRect;
begin
  Result := TfRgnDialog.CreateNew(Application);
  AForm := TfRgnDialog(Result);
  with Result do begin
    BiDiMode := Application.BiDiMode; { ����� ����� }
    BorderStyle := bsNone;            { ��� ������� }
    Canvas.Font := Font;              { �����, ����������� ��� MessageBox }
    DialogUnits := GetAveCharSize(Canvas); { ����������� ��� �������� ������ �
                                             �������� }
    HorzMargin := MulDiv(mcHorzMargin, DialogUnits.X, 4);
    VertMargin := MulDiv(mcVertMargin, DialogUnits.Y, 8);
    HorzSpacing := MulDiv(mcHorzSpacing, DialogUnits.X, 4);
    VertSpacing := MulDiv(mcVertSpacing, DialogUnits.Y, 8);
    ButtonWidth := MulDiv(mcButtonWidth, DialogUnits.X, 4);
    for B := Low(TMsgDlgBtn) to High(TMsgDlgBtn) do
      if B in Buttons then begin
        if ButtonWidths[B] = 0 then begin
          TextRect := Rect(0,0,0,0);
          Windows.DrawText( Canvas.Handle,
            PChar(LoadResString(ButtonCaptions[B])), -1,
            TextRect, DT_CALCRECT or DT_LEFT or DT_SINGLELINE or
            DrawTextBiDiModeFlagsReadingOnly);
          with TextRect do
            ButtonWidths[B] := Right - Left + 8;
        end;
        if ButtonWidths[B] > ButtonWidth then
          ButtonWidth := ButtonWidths[B];
      end;
    ButtonHeight := MulDiv(mcButtonHeight, DialogUnits.Y, 8);
    ButtonSpacing := MulDiv(mcButtonSpacing, DialogUnits.X, 4);
    SetRect(TextRect, 0, 0, Screen.Width div 2, 0);
    DrawText(Canvas.Handle, PChar(Msg), Length(Msg)+1, TextRect,
      DT_EXPANDTABS or DT_CALCRECT or DT_WORDBREAK or
      DrawTextBiDiModeFlagsReadingOnly);
    IconID := IconIDs[DlgType];
    IconTextWidth := TextRect.Right;
    IconTextHeight := TextRect.Bottom;
    if IconID <> nil then begin
      Inc(IconTextWidth, 32 + HorzSpacing);
      if IconTextHeight < 32 then
        IconTextHeight := 32;
    end;
    ButtonCount := 0;
    for B := Low(TMsgDlgBtn) to High(TMsgDlgBtn) do
      if B in Buttons then
        Inc(ButtonCount);
    ButtonGroupWidth := 0; { ������ ������ }
    if ButtonCount <> 0 then
      ButtonGroupWidth := ButtonWidth * ButtonCount +
        ButtonSpacing * (ButtonCount - 1);
    ClientWidth := Max(IconTextWidth, ButtonGroupWidth) + HorzMargin * 2;
    ClientHeight := IconTextHeight + ButtonHeight + VertSpacing +
      VertMargin * 2;
    Left := (Screen.Width div 2) - (Width div 2);
    Top := (Screen.Height div 2) - (Height div 2);
    if IconID <> nil then
      with TImage.Create(Result) do begin
        Name := 'Image';
        Parent := Result;
        Picture.Icon.Handle := LoadIcon(0, IconID);
        SetBounds(HorzMargin, VertMargin, 32, 32);
      end;
    AForm.FMessageText := TLabel.Create(Result);
    with AForm.FMessageText do begin
      Name := 'Message';
      Parent := Result;
      WordWrap := True;
      Caption := Msg;
      BoundsRect := TextRect;
      BiDiMode := Result.BiDiMode;
      ALeft := IconTextWidth - TextRect.Right + HorzMargin;
      if UseRightToLeftAlignment then
        ALeft := Result.ClientWidth - ALeft - Width;
      SetBounds(ALeft, VertMargin, TextRect.Right, TextRect.Bottom);
    end;
    if mbOk in Buttons then
      DefaultButton := mbOk
    else if mbYes in Buttons then
      DefaultButton := mbYes
    else
      DefaultButton := mbRetry;
    if mbCancel in Buttons then
      CancelButton := mbCancel
    else if mbNo in Buttons then
      CancelButton := mbNo
    else
      CancelButton := mbOk;
    X := (ClientWidth - ButtonGroupWidth) div 2;
    for B := Low(TMsgDlgBtn) to High(TMsgDlgBtn) do
      if B in Buttons then
        with THSFlatButton.Create(Result) do begin
          Shape := hbsRoundRect; //������������� � ������������� ������. ����� ������
                           // �� ��������� � ��������� ������, � ���������,
                           // ���������� ����������� Focus Rectangle, ��� ���
                           // � ���� ������ ������������� �������� ���������.
                           // �����, � ���� ������ ����� ������ ��� �������
                           // �������� ������ � ����, ���� ��� ��� �������������
                           // �����.
          Name := ButtonNames[B];
          Parent := Result;
          Caption := LoadResString(ButtonCaptions[B]);
          Color := Result.Color;  // ���� ������� ������ � ������� ������������� ����
                          // �����. � ���� ������ ����������� �������������
                          // ����� ��������������.
          DownColor := Result.Color;
          FocusRectColor := clBlack;
          if Color = clBtnFace then
            BorderColor := clBlack { clBtnShadow ??? }
          else
            BorderColor := clBtnFace;
          ModalResult := ModalResults[B];
          if B = DefaultButton then
            Default := True;
          if B = CancelButton then
            Cancel := True;
          SetBounds(X, IconTextHeight + VertMargin + VertSpacing,
            ButtonWidth, ButtonHeight);
          Inc(X, ButtonWidth + ButtonSpacing);
          if B = mbHelp then
            OnClick := AForm.HelpButtonClick;
        end;
  end;
  AForm.XCursorOffset := AXCursorOffset;
  AForm.YCursorOffset := AYCursorOffset;
  AForm.AlignWindow (AEditorControl);
end;

function HSMessageDlg(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint;
  AEditorControl : TControl;
  AXCursorOffset : Integer;
  AYCursorOffset : Integer): Integer;
begin
  with CreateHSMessageDialog(Msg, DlgType, Buttons, AEditorControl,
                             AXCursorOffset, AYCursorOffset) do
    try
      HelpContext := HelpCtx;
      Result := ShowModal();
    finally
      Free;
    end;
end;

procedure TfRgnDialog.HelpButtonClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;


constructor TfRgnDialog.CreateNew(AOwner: TComponent);
var
  NonClientMetrics: TNonClientMetrics;
begin
  inherited CreateNew(AOwner);
  { ��������� �����, ����������� ����, ������� ������������ � MessageBox }
  NonClientMetrics.cbSize := sizeof(NonClientMetrics);
  if SystemParametersInfo(SPI_GETNONCLIENTMETRICS, 0, @NonClientMetrics, 0) then
    Font.Handle := CreateFontIndirect(NonClientMetrics.lfMessageFont);
  OnActivate := FormActivate;
  Color := MessageColor;
end;

{
  ������������ ������� ������������ �������� ����������, � �������� ������
  ���������. ���������������, �������� ��, ����� ������ ������������ ���
  ��������� ����������, � ������ ����� - ��� ���.
  ���� ������������ ������ ������� �������� � ������� ��� ������ ����� �����
  �����.
}
procedure TfRgnDialog.AlignWindow(AEditorControl: TControl);
var P: TPoint;
    Y: Integer;
    X: Integer;
    WorkArea: TRect;
    R : TRect;
begin
  if NOT Assigned(AEditorControl) then begin
    TrianglePosition := tpNone;
    Position := poMainFormCenter;
    Exit;
  end;
  R := BoundsRect;
  { ���������� ���������� �������� �� ������ }
  P := AEditorControl.Parent.ClientToScreen(
                           Point(AEditorControl.Left, AEditorControl.Top));
  { ��� ������ ����� }
  Y := P.Y + AEditorControl.Height;
  X := P.X + XCursorOffset;
  { ������� ������� ������ }
  SystemParametersInfo(SPI_GETWORKAREA,0,Pointer(@WorkArea),0);
  if P.Y > (Height +
            GetSystemMetrics(SM_CYCAPTION)*2 + TriangleHeight) then begin
    { ����������� ����� ������������� ����� �����. ����������, � ������ �����
      �������� ���������� }
    TrianglePosition := tpBottomLeft;
    Top := P.Y - YCursorOffset - Pred(Height);
    Left := X - TriangleIndent;
  end else begin
    { ����������� ����� ������������� ������ �����. ����������, � ������ �����
      �������� ���������� }
    TrianglePosition := tpTopLeft;
    Top := Pred(Y) + YCursorOffset;
    Left := X - TriangleIndent;
  end;
end;

procedure HSShowMessage(const Msg: string;
                        AEditorControl : TControl;
                        AXCursorOffset : Integer;
                        AYCursorOffset : Integer);
begin
  HSMessageDlg(Msg, mtCustom, [mbOK], 0, AEditorControl,
               AXCursorOffset, AYCursorOffset);
end;

procedure HSShowMessageFmt(const Msg: string; Params : array of const;
                        AEditorControl : TControl;
                        AXCursorOffset : Integer;
                        AYCursorOffset : Integer);
begin
  HSShowMessage(Format(Msg, Params), AEditorControl,
                AXCursorOffset, AYCursorOffset);
end;

procedure HSShowError(const Msg: string;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2);
begin
  HSMessageDlg(Msg, mtError, [mbOK], 0, AEditorControl,
               AXCursorOffset, AYCursorOffset);
end;

procedure HSShowErrorFmt(const Msg: string; Params : array of const;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2);
begin
  HSShowError(Format(Msg, Params), AEditorControl,
              AXCursorOffset, AYCursorOffset);
end;

procedure HSShowWarning(const Msg: string;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2);
begin
  HSMessageDlg(Msg, mtWarning, [mbOK], 0, AEditorControl,
               AXCursorOffset, AYCursorOffset);
end;

procedure HSShowWarningFmt(const Msg: string; Params : array of const;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2);
begin
  HSShowWarning(Format(Msg, Params), AEditorControl,
              AXCursorOffset, AYCursorOffset);
end;

procedure HSShowInfo(const Msg: string;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2);
begin
  HSMessageDlg(Msg, mtInformation, [mbOK], 0, AEditorControl,
               AXCursorOffset, AYCursorOffset);
end;


procedure HSShowInfoFmt(const Msg: string; Params : array of const;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2);
begin
  HSShowInfo(Format(Msg, Params), AEditorControl,
              AXCursorOffset, AYCursorOffset);
end;

function HSConfirmMessage(const Msg: string;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2) : Boolean;
begin
  Result := HSMessageDlg(Msg, mtConfirmation, [mbYes, mbNo], 0, AEditorControl,
               AXCursorOffset, AYCursorOffset) = mrYes;
end;

function HSConfirmMessageFmt(const Msg: string; Params : array of const;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2) : Boolean;
begin
  Result := HSConfirmMessage(Format(Msg, Params), AEditorControl,
              AXCursorOffset, AYCursorOffset);
end;

function HSAskYesNoCancel(const Msg: string;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2) : Integer;
begin
  Result := HSMessageDlg(Msg, mtConfirmation, [mbYes, mbNo, mbCancel], 0,
                         AEditorControl, AXCursorOffset, AYCursorOffset);
end;

function HSAskYesNoCancelFmt(const Msg: string; Params : array of const;
                        AEditorControl : TControl = nil;
                        AXCursorOffset : Integer = 20;
                        AYCursorOffset : Integer = 2) : Integer;
begin
  Result := HSAskYesNoCancel(Format(Msg, Params), AEditorControl,
              AXCursorOffset, AYCursorOffset);
end;

{ ������ ��������� ��������� ��� ����������� ��������� ���������� ������ }
function Get256ColorMode : Boolean;
var
  DC : HDC;
begin
  DC := GetDC(0);
  try
    Result := GetDeviceCaps(DC, BITSPIXEL) = 8;
  finally
    ReleaseDC (0, DC);
  end;
end;

initialization
  if Get256ColorMode then
{ ����������� ����, ����� ������� �� ���� hint'�, �� ��������� ��������������
  � ������ 256 ������ }
    MessageColor := TColor($F0FBFF)  //����������� ���� clCream � 256-������� ������� MS
  else
    MessageColor := TColor($CCFFFF); //���� ��������� � MS Office 2000.
end.
