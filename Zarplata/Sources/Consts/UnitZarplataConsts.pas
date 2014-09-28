unit UnitZarplataConsts;

interface

resourcestring

 //Dpr-source
 Ini_FileName                    =   'Config.ini';
 OpenConfigError_Text            =   '�� �������� ���� � ����������';
 OpenDBError_Text                =   '��������� ����������'+#13+'���������� �� ����';
 Application_Caption             =   '��������';
 DB_Connection_Text              =   'ϳ��������� �� ���� �����:  ';
 WriteParameters_Text            =   '������� ���������';

 //����� �����
 TZSplash_Form_Label_Firm_Caption                     = 'ϳ���������';
 TZSplash_Form_Label_System_Caption                   = '��������������'+#13+'��������� ����������'+#13+'�������� �����';
 TZSplash_Form_Label_Rights_Caption                   = '����� �� ����� ������� ������� ���������� �� ���������� ��������������. �� ����� �������� �����.';
 TZSplash_Form_Label_Version_Caption                  = '�����: ';

 //�����
 InsertBtn_Caption                                    = '������';
 UpdateBtn_Caption                                    = '����������';
 DeleteBtn_Caption                                    = '��������';
 SelectBtn_Caption                                    = '������';
 SelectAllBtn_Caption                                 = '������ � ���������';
 RefreshBtn_Caption                                   = '��������';
 ExitBtn_Caption                                      = '�����';
 SpravBtn_Caption                                     = '�������';
 UpdateAllBtn_Caption                                 = '����������';
 LocateBtn_Caption                                    = '������';
 LocateNextBtn_Caption                                = '  ������ ���';
 YesBtn_Caption                                       = '��������';
 CancelBtn_Caption                                    = '³������';
 Error_Caption                                        = '�������';
 ButtonsControlBar_caption                            = 'ĳ�';

 //������� ���� ���������

 FZMainMenu_Caption                                   = 'ϳ�������� ���������� �������� �����';
 //----------------------------------------------------------------------------------------------------------
 FZMainMenu_AboutSubMainMenu_Caption                  = '������';
 //----------------------------------------------------------------------------------------------------------
 FZMainMenu_ServiceSubMainMenu_Caption                = '�����';
 FZMainMenu_SystemPreverencesPunktMainMenu_Caption    = '����������';
 FZMainMenu_TaxesNetsPunktMainMenu_Caption            = '�������';
 FZMainMenu_ReturnPrevPeriodPunktMainMenu_Caption     = '³���� �� ��������� �����';
 //----------------------------------------------------------------------------------------------------------
 FZMainMenu_SpSubMainMenu_Caption                     = '��������';
 FZMainMenu_CalendarSpPunktMainMenu_Caption           = '��������';
 FZMainMenu_WorkerCategorySpPunktMainMenu_Caption     = '������� ����������';
 FZMainMenu_SmetaSpPunktMainMenu_Caption              = '�����';
 FZMainMenu_VoSpPunktMainMenu_Caption                 = '���� ������';
 FZMainMenu_DivisionSpPunktMainMenu_Caption           = 'ϳ�������';
 FZMainMenu_PrivilegeSpPunktMainMenu_Caption          = '������';
 FZMainMenu_VOutSpPunktMainMenu_Caption               = '���� ������';
 FZMainMenu_VoplSpravPunktMainMenu_Caption            = '���� ��������';
 FZMainMenu_ViewVoPunktMainMenu_Caption               = '³����������';
 FZMainMenu_PeoplePunktMainMenu_Caption               = 'Գ���� �����';
 //----------------------------------------------------------------------------------------------------------
 FZMainMenu_DataSubMainMenu_Caption                   = '����';
 FZMainMenu_WorkerDtPunktMainMenu_Caption             = '�����������';
 FZMainMenu_PeoplePropPunktMainMenu_Caption           = '���������� ���';
 FZMainMenu_StudentDtPunktMainMenu_Caption            = '��������';
 FZMainMenu_CurrentDtPunktMainMenu_Caption            = '������ ��������';
 FZMainMenu_PeoplePrivPunktMainMenu_Caption           = '�� ������������ ��������';
 FZMainMenu_RemontPunktMainMenu_Caption               = '������� ������';
 FZMainMenu_DopMoneyPunktMainMenu_Caption             = '���������� ����������';
 FZMAinMenu_AlimentPunktMainMenu_Caption              = '�� ��������� �������';
 FZMAinMenu_InvalidPunktMainMenu_Caption              = '������ �������';
 FZMainMenu_AlwaysUderzhPunktMainMenu_Caption         = '�������� ��������';
 FZMainMenu_SsudaPunktMainMenu_Caption                = '�� ����� �����';
 FZMainMenu_NonSpisokPunktMainMenu_Caption            = '����� ���� �������';
 //----------------------------------------------------------------------------------------------------------
 FZMainMenu_InformationSubMainMenu_Caption            = '����������';
 FZMainMenu_PrevPeriodDataPunktMainMenu_Caption       = '���� ������� ������';
 FZMainMenu_LostDataPunktMainMenu_Caption             = '���� ��������';
 FZMainMenu_UchetVedSubInformSubMainMenu_Caption      = '��� ���������';
 FZMainMenu_VedCurrentMonthPunktMainMenu_Caption      = '³������ ������';
 FZMainMenu_ReestrVedPunktMainMenu_Caption            = '������';
 FZMainMenu_FilterVedPunktMainMenu_Caption            = '�����';
 //----------------------------------------------------------------------------------------------------------
 FZMainMenu_WorkSubMainMenu_Caption                   = '������';
 FZMainMenu_AvansPunktMainMenu_Caption                = '���������� ������';
 FZMainMenu_PromViplatiPunktMainMenu_Caption          = '������ ��������';
 FZMainMenu_RaschetPunktMainMenu_Caption              = '��������� ����������';
 FZMainMenu_ZarplataPunktMainMenu_Caption             = '���������� �������� �����';
 FZMainMenu_StipPunktMainMenu_Caption                 = '���������� ������������� ������';
 FZMainMenu_VedRaschetPunktMainMenu_Caption           = '³������ ����������';
 FZMainMenu_DataRaschetPunktMainMenu_Caption          = '���� ����������';
 FZMainMenu_ReCountPunktMainMenu_Caption              = '�����������';
 FZMainMenu_ReCountDataPunktMainMenu_Caption          = '�������� �����������';
 FZMainMenu_OperationEndPunktMainMenu_Caption         = '���������� ��������';
 //----------------------------------------------------------------------------------------------------------

 FZMainMenu_PrintSubMainMenu_Caption                  = '����';
 //----------------------------------------------------------------------------------------------------------
 FZMainMenu_SpravSubMainMenu_Caption                  = '������';
 FZMainMenu_SvodPunktMainMenu_Caption                 = '����';
 FZMainMenu_SprSubsPunktMainMenu_Caption              = '��� ������(�������)';
 //----------------------------------------------------------------------------------------------------------
 FZMainMenu_WindowSubMainMenu_Caption                 = '³���';
 FZMainMenu_CascadePunktMainMenu_Caption              = '��������';
 FZMainMenu_TileVerPunktMainMenu_Caption              = '�����������';
 FZMainMenu_TileGorPunktMainMenu_Caption              = '�������������';
 FZMainMenu_MinAllPunktMainMenu_Caption               = '̳��������';
 FZMainMenu_NormAllPunktMainMenu_Caption              = '������������';
 FZMainMenu_CloseWindAllPunktMainMenu_Caption         = '�������';
 //----------------------------------------------------------------------------------------------------------
 FZMainMenu_ExitPunktMainMenu_Caption                 = '�����';

 FZMainMenu_ExitAnswer_Caption                        = '�����';
 FZMainMenu_ExitAnswer_Text                           = '�� ����� ������'+#13+'�������� �������?';

  //SotrListView
 Form_SotrList_Caption                                     ='����������(����������)';
 TnColumnCaption                                           ='���. �����';
 FamiliaColumnCaption                                      ='�����';
 ImyaColumnCaption                                         ='���';
 OtchestvoColumnCaption                                    ='�� �������';
 SotrDetailsBtnCaption                                     ='����������';



 //SotrFilterForm
 Form_SotrFilterCaption                                    ='��������� �����';
 Tn_Label_Caption                                          ='��������� �����:';
 Familia_Label_Caption                                     ='�����:';
 Ink_Label_Caption                                         ='���������������� �����:';
 Department_Label_Caption                                  ='ϳ������';

 //FSp_People_Prop_Control
 FSp_People_Prop_Control_Caption_Insert                    = '��������� ��������';
 FSp_People_Prop_Control_Caption_Update                    = '����������� ��������';
 FSp_People_Prop_Control_Caption_Delete                    = '��������� ��������';
 FSp_People_Prop_Control_IdentificationBox_Caption         = '������ ����';
 FSp_People_Prop_Control_PeriodBox_Caption                 = '����� 䳿';
 FSp_People_Prop_Control_LabelPeople_Caption               = 'Գ����� �����:';
 FSp_People_Prop_Control_PropLabel_Caption                 = '�������:';
 FSp_People_Prop_Control_DateBegLabel_Caption              = '�������';
 FSp_People_Prop_Control_DateEndLabel_Caption              = '���������';

//******************************************************************************
//******************************************************************************
//******************************************************************************
//******************************************************************************
//******************************************************************************
//******************************************************************************
//******************************************************************************
 ZAccess_UserLabel_Caption                        = '����������';
 ZAccess_UserLogin_Caption                        = '������';
 ZAccess_Caption                                  = '����';
 ZAccess_YesBtn_Caption                           = '���';
 ZAccess_CancelBtn_Caption                        = '�����';
 ZAccess_ErrorInSystemAccess_Caption              = '������� � ������ �������!';
//******************************************************************************
//******************************************************************************
//******************************************************************************
//******************************************************************************
//******************************************************************************
//******************************************************************************
//******************************************************************************

 //SotrDetailsForm
 SotrDetailsFormCaption                                    ='�������� ���������� �� �����������';
 PeriodBegColumnCaption                                    ='�';
 PeriodEndColumnCaption                                    ='��';
 PostColumnCaption                                         ='������';
 PaymentColumnCaption                                      ='�����/�����';
 GeneralPageCaption                                        ='�������� ����������';
 DepartmentLabelCaption                                    ='ϳ������:';
 OrderNumCaption                                           ='����� �����:';
 ManMovingGridHeaderCaption                                ='������� ����������';
 ManBonusGridHeaderCaption                                 ='�������� �� �������';
 BonusNameCaption                                          ='�����';
 BonusPaymentCaption                                       ='�����/�������';
 BonusBegCaption                                           ='�';
 BonusEndCaption                                           ='��';
 BonusOrderNumCaption                                      ='����� �';
 ManBonusPageCaption                                       ='��������';
 FilterButtonCaption                                       ='³���';
 //���� � �����������
 ManHospitalPageCaption                                    ='����� ���������������';
 HospDateBegCaption                                        ='�';
 HospDateEndCaption                                        ='��';
 HospSeriaCaption                                          ='����';
 HospNumCaption                                            ='�����';
 HospPercentCaption                                        ='�������';
 //���� � ���������
 ManHolidayPageCaption                                     ='³�������';
 ManHolNameCaption                                         ='�����';
 ManHolPeriodBegCaption                                    ='����� �';
 ManHolPeriodEndCaption                                    ='����� ��';
 ManHolDateBegCaption                                      ='�';
 ManHolDateEndCaption                                      ='��';

implementation

end.
