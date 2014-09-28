{ -$Id: TableCentral.pas,v 1.8 2009/05/26 09:47:41 yaric Exp $ }
unit TableCentral;

interface

uses WorkModeCentral, Controls,IBQuery, IBDataBase, SpCommon,
    Variants, NagScreenUnit, ProcessUnit;

type
        // ���������� �����
    TTableHours = record
        Hours: Double;
        NHours: Double;
        PHours: Double;
        SHours: Double;
        VHours: Double;
        GHours: Double;
        Days: Integer;
        CalDays: Integer;
    end;

        // ���� �� ������
    TTableDay = class(TObject)
        private
            FCurDate:       TDate;
            FWorkHours:     TWorkHours;
            FVihod:         TVihod;
            FTableHours:    TTableHours;

            FIs_Prazn:      Boolean;
            FReadDay:       Boolean;
            FSelected:      Boolean;

            FWorkHalfTime:      Boolean;

            function        Get_Is_Perehod: Boolean;
            function        GetWorkDay: Boolean;
            function        GetWorkDay2: Boolean;
            function        GetNight: Boolean;
            function        GetVihodnoi: Boolean;
            function        GetSverh: Boolean;
        public
                        // ������ ��� ��� ������� ������� ������
//            InsideWork: Boolean;

                        // ��������� �� �������� ���� �� ���������� ������
            Need_Kol_Stavok: Integer;

                        // �������������� �����
            Add_Flags:     Integer;

            property Is_Prazn: Boolean read FIs_Prazn write FIs_Prazn;

                // ������� �� ���� (����� ��������� �� ������ �����)...
            property WorkDay2: Boolean read GetWorkDay2;
                // ������� �� ���� (�.�. ���� �� ����)
            property WorkDay: Boolean read GetWorkDay;
                // ���� �� ������
            property Night: Boolean read GetNight;
                // ���� �� ������ � �������� ����
            property VihodnoiWork: Boolean read GetVihodnoi;
                // ���� �� ������������
            property SverhWork: Boolean read GetSverh;

            property ReadDay: Boolean read FReadDay write FReadDay;
            property Selected: Boolean read FSelected write FSelected;
            property CurDate: TDate read FCurDate;
                // ���� � ������ ����������� � �����������
            property Hours: TTableHours read FTableHours write FTableHours;
                // ���� ������ ����� ���
            property ThisHours: TWorkHours read FWorkHours write FWorkHours;
                // ��� ������
            property Vihod: TVihod read FVihod;
                // ������ �� ��������� �������
            property WorkHalfTime: Boolean read FWorkHalfTime write FWorkHalfTime;

            constructor Create(_CurDate: TDate);
            destructor  Destroy; override;
                // ���������� ����� �� ������� �� ������ ������ � �������
            procedure   SetWorkMode(Id_Work_Mode: Integer; Shift: Integer;
              Need_Kol_Stavok: Integer);
                // ���������� ����� �� ������� �� ������ ������ � �������
                // �� ������� ��� ������
            procedure   SetWorkMode_NoClear(Id_Work_Mode: Integer; Shift: Integer;
              Need_Kol_Stavok: Integer = 1);
                // ���������� ���� � ������ ����������� ���
            procedure   CalcHours(PrevDay: TWorkHours);
                // ����������� ���� ��� ��� (�.�. ����� ��������� � ����. ����)
            property Is_Perehod: Boolean read Get_Is_Perehod;
                // �������� ����� �� ����� ����
            procedure ChopHours;
                // ������� ����� ��������� (����� ��� ������ ������ �� ����)
            procedure SetTableHours(tHours: TTableHours);
                // �������� ���� ������ � ��������
            procedure AddVHours(Hours: Double);
                // �������� ������������
            procedure AddSHours(Hours: Double);
                // ������� ���� �� �������
            procedure ZeroGrafic;
                // �������� �������� ���������� �����
                // 1 - � �����, 2 - � ������
            procedure EatHours(Hours: Double; FromWhere: Integer = 1);

                // ��������� ��� ������
            function ToString: String;
                // �������� ����
            procedure Clear;
                // ������ ���������� ������
            procedure Use_Kol_Stavok(Kol_Stavok: Double);

            procedure Zero;
    end;

        // ���������� ���� ������
    TTableDaySpan = class(TObject)
        private
            FCells: array of TTableDay;
            FTotalHours: TTableHours;

            function GetTableDay(ind: Integer): TTableDay;
            function GetDateBeg: TDate;
            function GetDateEnd: TDate;
        public
                // ������� ����������
            constructor Create(Day1, Day2: TDate);
                // ������� ���
            procedure SelectAll;
                // ����� ��������� �� ����
            procedure UnSelectAll;
                // ������� ��������
            procedure SelectRange(ind1, ind2: Integer);overload;
            procedure SelectRange(date1, date2: TDate);overload;
                // ����� ��������� � ���������
            procedure UnSelectRange(ind1, ind2: Integer);overload;
            procedure UnSelectRange(date1, date2: TDate);overload;
                // ���������� ����� ������ ��� ��������� ������
            procedure SetMode(Id_Work_Mode: Integer; Shift: Integer;
              Need_Kol_Stavok: Integer);
                // ���������� ����� ������ ��� ��������� ������
                // �� ������� ����� ������
            procedure SetMode_NoClear(Id_Work_Mode: Integer; Shift: Integer);
                // ������� ����������� ���� ��� ���
            procedure ReadCalendar(Calendar: TCalendar);
                // ���������� ��� ������ �� ���������
            procedure SetDefaultVihods;
                // ���������� ��� ������ �� ��������� ��� ������ ������
            procedure SetVihod(ind:Integer; id_vihod: Integer);
                // ���������� ��� ������, �� ������� ����...
            procedure SetVihodNoHours(ind:Integer; id_vihod: Integer);
                // ���������� ��� ������
            procedure CalcDays;
                // ���������� ���� �� �������
            procedure CalcGraphic;
                // ���������� ����� (��� ����� �������)
            procedure CalcTotal;
                // ���������� ������ � ������
            function ToString: String;
                // ��������� �����
            function GetCount: Integer;
                // ���������� ����������� ���
            procedure CalcCalDays(Start_Date, End_Date: TDate);
                // �������� ���� �� ������� � �����-�� ����
            procedure ZeroGraphic(Day: Integer);

            destructor Destroy; override;

            property TotalHours: TTableHours read FTotalHours;
                // ������
            property Cells[ind: Integer]: TTableDay read GetTableDay;default;
                // ���������� �����
            property Count: Integer read GetCount;
                // ���� ������
            property Date_Beg: TDate read GetDateBeg;
                // ���� �����
            property Date_End: TDate read GetDateEnd;
    end;

    TTableStatus = (tsUnknown, tsRead, tsNew, tsModified, tsWritten, tsError);

        // �������� ��� ������ ��� ����������� ����� �� �������
    function CompareSpans(Span1, Span2: TTableDaySpan;
        fromInd, toInd: Integer; Kol_Stavok: Double): String;

    function GetMonthMovingCount(Month_Beg, Month_End: TDate): Integer;

var
    ShowInDecimals: Boolean;

implementation

uses DateUtils, SysUtils, SpTimeUtils, Math, DB;


procedure TTableDay.EatHours(Hours: Double; FromWhere: Integer = 1);
var
    reg: TWorkReg;
begin
    reg := ThisHours.WorkReg;

    if FromWhere = 1 then
        reg.Work_End := reg.Work_End - Hours/24
    else
        reg.Work_Beg := reg.Work_Beg + Hours/24;
        
    ThisHours.WorkReg := reg;
end;

procedure TTableDay.Zero;
begin
    FWorkHours.WorkReg := ZeroReg;
    FWorkHours.CalcHours;

    with FTableHours do
    begin
        Hours := 0;
        NHours := 0;
        PHours := 0;
        SHours := 0;
        VHours := 0;
        Days := 0;
        CalDays := 0;
    end
end;

procedure TTableDay.Use_Kol_Stavok(Kol_Stavok: Double);
begin
    with FTableHours do
    if Need_Kol_Stavok = 1 then
    begin
        Hours := Hours * Kol_Stavok;
        PHours := PHours * Kol_Stavok;
        NHours := NHours * Kol_Stavok;
        VHours := VHours * Kol_Stavok;
        SHours := SHours * Kol_Stavok;
    end;
end;

procedure TTableDaySpan.ZeroGraphic(Day: Integer);
var
    ghours: Double;
begin
    ghours := Cells[Day].Hours.GHours;
    Cells[Day].ZeroGrafic;
    FTotalHours.GHours := FTotalHours.GHours - ghours;

        // ������ ������� � ����. ���, ����� ����� �����
    if Day > 0 then
    with Cells[day-1].FWorkHours.GraficReg do
        if Work_End < Work_Beg then Work_End := 1;
end;

procedure TTableDay.ZeroGrafic;
begin
    FTableHours.GHours := 0;
end;

procedure TTableDay.Clear;
begin
    FSelected := False;
    FReadDay := False;
//    FIs_Prazn := False;

    with FTableHours do
    begin
        Hours := 0;
        NHours := 0;
        VHours := 0;
        SHours := 0;
        PHours := 0;
        GHours := 0;
    end;

    FVihod := nil;
end;



function GetMonthMovingCount(Month_Beg, Month_End: TDate): Integer;
var
    query: TIBQuery;
begin
    query := TIBQuery.Create(nil);
    query.Transaction := WorkModeCenter.ReadTransaction;
    query.SQL.Text := 'SELECT * FROM Get_Month_Moving_Count(''' +
        DateToStr(Month_Beg) + ''',''' + DateToStr(Month_End) + ''')';
    Result := ExecQuery(query);
    query.Free;
end;


procedure TTableDaySpan.CalcCalDays(Start_Date, End_Date: TDate);
var
    dBeg, dEnd: TDate;
begin
            // ����������� ���
    if Start_Date > Date_Beg then dBeg := Start_Date
    else dBeg := Date_Beg;

    if End_Date < Date_End then dEnd := End_Date
    else dEnd := Date_End;
    FTotalHours.CalDays := DaysBetween(dBeg, dEnd) + 1;
end;


procedure TTableDay.AddVHours(Hours: Double);
begin
    FTableHours.VHours := FTableHours.VHours + Hours;
end;

procedure TTableDay.AddSHours(Hours: Double);
begin
    FTableHours.SHours := FTableHours.SHours + Hours;
end;


function TTableDay.GetWorkDay2: Boolean;
begin
    if WorkModeCenter.Consts_Query['Table_Work_Days_Smena'] = 1 then
        Result := (FTableHours.Hours > eps) and
            ( abs(ThisHours.WorkReg.Work_Beg - ThisHours.WorkReg.Work_End) > eps )
    else Result := (FTableHours.Hours > eps);
end;

function TTableDay.GetWorkDay: Boolean;
begin
    Result := (FTableHours.Hours > eps);
end;

function TTableDay.GetNight: Boolean;
begin
    Result := FTableHours.NHours > eps;
end;

function TTableDay.GetVihodnoi: Boolean;
begin
    Result := FTableHours.VHours > eps;
end;

function TTableDay.GetSverh: Boolean;
begin
    Result := FTableHours.SHours > eps;
end;


function TTableDaySpan.GetDateBeg: TDate;
begin
    Result := FCells[1].CurDate;
end;

function TTableDaySpan.GetDateEnd: TDate;
begin
    Result := FCells[High(FCells)].CurDate;
end;

function CompareSpans(Span1, Span2: TTableDaySpan; fromInd, toInd: Integer;
    Kol_Stavok: Double): String;
var
    ind, firstDay: Integer;
    firstDate, firstDate2: TDate;
    chg: String;
    hours1, hours2, vhours2: Double;
begin
    firstDate := Span1.Date_Beg;
    firstDate2 := Span2.Date_Beg;

    if firstDate <> firstDate2 then
    begin
        Result := 'г�� �������� ����! (' + DateToStr(firstDate) + ' \ ' +
            DateToStr(firstDate2) + ')';
        Exit;
    end;

    firstDay := DayOf(firstDate);

    Result := '';
    for ind := fromInd to toInd do
    begin
        chg := '';

        hours1 := Span1[ind].Hours.Hours * Kol_Stavok;
        hours2 := Span2[ind].Hours.Hours;
        vhours2 := Span2[ind].Hours.VHours;

        if ( hours1 < eps ) and ( abs(hours2 - vhours2) > eps ) then
        begin
            chg := '�������� ������ � �������� ���� ' + IntToStr(firstDay+ind-1)
                + '(' + Span2[ind].ToString + ')';
        end
        else
        if (hours2 > eps) and (hours1 > eps) and
            ( abs(hours2 - hours1) > eps) then
            chg := 'г��� ������� ����� � ���� ' + IntToStr(firstDay+ind-1)+
                ' (' + Span1[ind].ToString + ' \ ' + Span2[ind].ToString + ')';

        if chg <> '' then Result := Result + #13#10 + '------->' + chg;
    end;
end;


function TTableDay.ToString: String;
begin
    if ( FVihod <> nil ) and ( FVihod.Id_Vihod = 37 ) then
        Result := FVihod.Name_Short
    else
    if Hours.Hours > eps then
            Result := EncodeTimeString2(Hours.Hours, ShowInDecimals)
    else
        if FVihod <> nil then Result := FVihod.Name_Short
        else Result := '()';
end;

procedure TTableDaySpan.SetDefaultVihods;
var
    i: Integer;
begin
    for i:=0 to High(FCells) do
        if FCells[i].FVihod = nil then
            if FCells[i].Hours.Hours < eps then
                FCells[i].FVihod := AllVihods[35]
            else
            if FCells[i].Hours.SHours > eps then
                FCells[i].FVihod := AllVihods[4]
            else
            if FCells[i].Hours.NHours > eps then
                FCells[i].FVihod := AllVihods[2]
            else
                FCells[i].FVihod := AllVihods[1];
end;

procedure TTableDaySpan.SetVihod(ind: Integer; id_vihod: Integer);
begin
    with FCells[ind] do
    begin
        FVihod := AllVihods[id_vihod];
        FWorkHours.WorkReg := ZeroReg;
    end;
    if ind > 0 then
        with FCells[ind-1] do
            if Is_Perehod then
                ChopHours;
end;

procedure TTableDaySpan.SetVihodNoHours(ind: Integer; id_vihod: Integer);
begin
    with FCells[ind] do
        FVihod := AllVihods[id_vihod];
end;

function TTableDay.Get_Is_Perehod: Boolean;
begin
    with FWorkHours.WorkReg do
        Result := (Work_End < Work_Beg);
end;

procedure TTableDay.SetTableHours(tHours: TTableHours);
begin
    FTableHours := tHours;
end;

procedure TTableDay.ChopHours;
var
    reg: TWorkReg;
begin
    reg := FWorkHours.WorkReg;
    reg.Work_End := 1;
    FWorkHours.WorkReg := reg;
end;

function TTableDaySpan.GetCount: Integer;
begin
    Result := Length(FCells) - 1;
end;

function TTableDaySpan.GetTableDay(ind: Integer): TTableDay;
begin
    if ( ind > Length(FCells) ) then
        raise ERangeError.Create('TTableDaySpan: ������� ����� � ����� ���!');
    Result := FCells[ind];
end;

procedure TTableDaySpan.SelectRange(date1, date2: TDate);
var
    i, ind1, ind2: Integer;
begin
    ind1 := DaysBetween(date1, FCells[1].FCurDate-1);
    ind2 := DaysBetween(date2, FCells[1].FCurDate-1);
    for i:=ind1 to ind2 do
        FCells[i].Selected := True;
end;

procedure TTableDaySpan.UnSelectRange(date1, date2: TDate);
var
    i, ind1, ind2: Integer;
begin
    ind1 := DaysBetween(date1, FCells[1].FCurDate);
    ind2 := DaysBetween(date2, FCells[1].FCurDate);
    for i:=ind1 to ind2 do
        FCells[i].Selected := False;
end;


procedure TTableDaySpan.SelectRange(ind1, ind2: Integer);
var
    i: Integer;
begin
    for i:=ind1 to ind2 do
        FCells[i].Selected := True;
end;

procedure TTableDaySpan.UnSelectRange(ind1, ind2: Integer);
var
    i: Integer;
begin
    for i:=ind1 to ind2 do
        FCells[i].Selected := False;
end;

procedure TTableDaySpan.SelectAll;
var
    i: Integer;
begin
    for i:=0 to High(FCells) do
        FCells[i].Selected := True;
end;

procedure TTableDaySpan.UnSelectAll;
var
    i: Integer;
begin
    for i:=0 to High(FCells) do
        FCells[i].Selected := False;
end;


function TTableDaySpan.ToString: String;
var
    i: Integer;
    s: String;
begin
    s := '';
    for i:=1 to High(FCells) do
        s := s + FCells[i].ToString + '  ';
    Result := s;
end;

procedure TTableDaySpan.CalcDays;
var
    i: Integer;
begin
    FCells[0].CalcHours(nil);
    for i:=1 to High(FCells) do
        FCells[i].CalcHours(FCells[i-1].ThisHours);
end;

procedure TTableDaySpan.CalcGraphic;
var
    i: Integer;
begin
    with FTotalHours do
    begin
        GHours := 0;

        for i:=1 to High(FCells) do
            GHours := GHours + FCells[i].FTableHours.GHours;
    end;
end;

procedure TTableDaySpan.CalcTotal;
var
    i: Integer;
begin
    with FTotalHours do
    begin
        Hours := 0;
        NHours := 0;
        PHours := 0;
        SHours := 0;
        VHours := 0;
        Days := 0;

        for i:=1 to High(FCells) do
        begin
            Hours := Hours + FCells[i].FTableHours.Hours;
            NHours := NHours + FCells[i].FTableHours.NHours;
            PHours := PHours + FCells[i].FTableHours.PHours;
            VHours := VHours + FCells[i].FTableHours.VHours;
            SHours := SHours + FCells[i].FTableHours.SHours;
            
            if FCells[i].WorkDay2 then inc(Days);

               // ���������, ����� �� ���� �������
            GHours := SimpleRoundTo(GHours, -3);
            Hours := SimpleRoundTo(Hours, -3);
            PHours := SimpleRoundTo(PHours, -3);
            NHours := SimpleRoundTo(NHours, -3);
            VHours := SimpleRoundTo(VHours, -3);
            SHours := SimpleRoundTo(SHours, -3);
        end;
    end;
end;

procedure TTableDaySpan.ReadCalendar(Calendar: TCalendar);
var
    i: Integer;
begin
    for i:=0 to High(FCells) do
        FCells[i].Is_Prazn := Calendar[FCells[i].CurDate];
end;

procedure TTableDaySpan.SetMode(Id_Work_Mode: Integer; Shift: Integer;
  Need_Kol_Stavok: Integer);
var
    i: Integer;
begin
    for i:=0 to High(FCells) do
        if FCells[i].Selected then
            FCells[i].SetWorkMode(Id_Work_Mode, Shift, Need_Kol_Stavok);
end;

procedure TTableDaySpan.SetMode_NoClear(Id_Work_Mode: Integer; Shift: Integer);
var
    i: Integer;
begin
    for i:=0 to High(FCells) do
        if FCells[i].Selected then
            FCells[i].SetWorkMode_NoClear(Id_Work_Mode, Shift);
end;

constructor TTableDaySpan.Create(Day1, Day2: TDate);
var
    i, cnt: Integer;
begin
    inherited Create;
    cnt := DaysBetween(Day1, Day2) + 2;   // ��� ���� ���������� ����
    SetLength(FCells, cnt);

    for i:=0 to cnt-1 do
        FCells[i] := TTableDay.Create(Day1 + i - 1);
end;

destructor TTableDaySpan.Destroy;
var
    i: Integer;
begin
    for i:=0 to High(FCells) do
        FCells[i].Free;
end;

procedure   TTableDay.SetWorkMode(Id_Work_Mode: Integer; Shift: Integer;
  Need_Kol_Stavok: Integer);
begin
    SetWorkMode_NoClear(Id_Work_Mode, Shift, Need_Kol_Stavok);
    FVihod := nil;
end;

procedure   TTableDay.SetWorkMode_NoClear(Id_Work_Mode: Integer; Shift: Integer;
  Need_Kol_Stavok: Integer = 1);
begin
    WorkModeCenter.Id_Work_Mode := Id_Work_Mode;
    WorkModeCenter.Shift := Shift;
    WorkModeCenter.CurDate := FCurDate;
    FWorkHours.GraficReg := WorkModeCenter.Times;

    FWorkHours.NightHours.Period_Beg := WorkModeCenter.Night_Begin;
    FWorkHours.NightHours.Period_End := WorkModeCenter.Night_End;

//    if InsideWork then
    if FVihod = nil then
        FWorkHours.WorkReg := FWorkHours.GraficReg;
    FWorkHours.CalcHours;

    Self.Need_Kol_Stavok := Need_Kol_Stavok;
end;

procedure   TTableDay.CalcHours(PrevDay: TWorkHours);
begin
    FWorkHours.CalcHours;

    with FTableHours do
    begin
        GHours := 24*FWorkHours.GraficHours.Today_Hours;
        Hours := 24*FWorkHours.Hours.Today_Hours;
        NHours := 24*FWorkHours.NightHours.Today_Hours;

        if WorkModeCenter.Table_Split_Days = 0 then
        begin
          GHours := GHours + 24*FWorkHours.GraficHours.Tomorrow_Hours;
          Hours := Hours + 24*FWorkHours.Hours.Tomorrow_Hours;
          NHours := NHours + 24*FWorkHours.NightHours.Tomorrow_Hours;
        end;


            // ������ ���������� ����, ���� ����
        if ( PrevDay <> nil ) and ( WorkModeCenter.Table_Split_Days = 1 ) then
        begin
            GHours := GHours + 24*PrevDay.GraficHours.Tomorrow_Hours;
            Hours := Hours + 24*PrevDay.Hours.Tomorrow_Hours;
            NHours := NHours + 24*PrevDay.NightHours.Tomorrow_Hours;
        end;

            // ������ ����� ��� ��� ������������������
        if Add_Flags and 1 = 1 then
        begin
            if Hours > eps then
                Hours := Hours - 1;
        end;
            // ��������� ������������ (��-������ �� ����� ������ ����� �� ������)
        Hours := Hours + SHours;

            // ���������, ����� �� ���� �������
        GHours := SimpleRoundTo(GHours, -3);
        Hours := SimpleRoundTo(Hours, -3);
        PHours := SimpleRoundTo(PHours, -3);
        NHours := SimpleRoundTo(NHours, -3);
        VHours := SimpleRoundTo(VHours, -3);
        SHours := SimpleRoundTo(SHours, -3);

            // ������ �����������, ���� ���� ������ � �������� ����
        if FIs_Prazn and (VHours < eps) then PHours := Hours
        else PHours := 0;
    end;
end;

constructor TTableDay.Create(_CurDate: TDate);
begin
    inherited Create;

    FCurDate := _CurDate;

    try
    FWorkHours := TWorkHours.Create(WorkModeCenter.Consts_Query['DEFAULT_NIGHT_BEG'],
        WorkModeCenter.Consts_Query['DEFAULT_NIGHT_END']);
    except on E:Exception do begin end;    
    end;

    FIs_Prazn := False;
    FVihod := nil;
//    InsideWork := True;
    Add_Flags := 0;
end;

destructor TTableDay.Destroy;
begin
    FWorkHours.Free;
end;



end.
