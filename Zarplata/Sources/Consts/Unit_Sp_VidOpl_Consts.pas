unit Unit_Sp_VidOpl_Consts;

interface

resourcestring

//�����
 InsertBtn_Caption                                    = '������';
 UpdateBtn_Caption                                    = '����������';
 DeleteBtn_Caption                                    = '��������';
 SelectBtn_Caption                                    = '������';
 SelectAllBtn_Caption                                 = '������ � ���������';
 SpravBtn_Caption                                     = '�������';
 DeleteRecord_Caption                                 = '���������';
 DeleteRecord_Text                                    = '�� ����� ������'+#13+'�������� ��� �����?';
 SavePropsBtn_Caption                                 = '����������';
 SavePropsBtn_Text1                                   = '��������� ����������:'+#13;
 SavePropsBtn_Text2                                   = '�� ������ � ���� ���� ������.'+#13+'�������?';
 SaveBtn_Caption                                      = '����������';
 RefreshBtn_Caption                                   = '��������';

 SpravPropVidOplBtn_Caption                           = '����������';
 SpravGroupVidOplPropBtn_Caption                      = '����� ������������';
 SpravGroupVidOplBtn_Caption                          = '����� ���� �����';
 TabSheetNar_Caption                                  = '�����������';
 TabSheetUd_Caption                                   = '���������';
 TabSheetCorespond_Caption                            = '��������������';
 TabSheetConstsVo_Caption                             = '��������� �������';
 ExitBtn_Caption                                      = '�����';
 UpdateAllBtn_Caption                                 = '����������';
 LocateBtn_Caption                                    = '������';
 LocateNextBtn_Caption                                = '  ������ ���';
 YesBtn_Caption                                       = '��������';
 CancelBtn_Caption                                    = '³������';
 Error_Caption                                        = '�������';
 ButtonsControlBar_caption                            = 'ĳ�';
 LocateResult_Caption                                 = '�����';
 LocateResult_NotLocateText                           = 'ͳ���� �� ��������';

//FVOLocate
 FVOLocate_Caption                                    = '�����';
 FVOLocate_RadioGroupTypeLocate_Caption               = '��';
 FVOLocate_GroupBoxLocate_Caption                     = '�����';
 FVOLocate_RadioGroupTypeLocate_Text1                 = '����� ��';
 FVOLocate_RadioGroupTypeLocate_Text2                 = '��� ��';
 FVOLocate_RadioGroupTypeLocate_Text3                 = '���������';

// FCorespondEdit
 FCorespondEdit_Caption                               = '����������� ��������������';
 FCorespondEdit_LabelVidOplName_Caption               = '��� ������';
 FCorespondEdit_LabelCorespond_Caption                = '����� ��������������';

//FVoplIniGroupControl
 FVoplIniGroupControl_Caption_Insert_Group             = '��������� ����� ��� ������������';
 FVoplIniGroupControl_Caption_Update_Group             = '����������� ����� ��� ������������';
 FVoplIniGroupControl_Caption_Delete_Group             = '��������� ����� ��� ������������';
 FVoplIniGroupControl_Caption_Insert_Prop              = '��������� ����������';
 FVoplIniGroupControl_Caption_Update_Prop              = '����������� ����������';
 FVoplIniGroupControl_Caption_Delete_Prop              = '��������� ����������';
 FVoplIniGroupControl_LabelFullName_Caption            = '�����';

 //FZSp_VidOpl
 FZSp_VidOpl_Caption                                   = '������� ����� �����';
 FZSp_VidOpl_GridColumnVidOpl_Name_Caption             = '�����';
 FZSp_VidOpl_GridColumnOptionsName_Caption             = '����������';
 FZSp_VidOpl_GridColumnOptionsUse_Caption              = '� 䳿';
 FZSp_VidOpl_GridColumnOptionsGroup_Caption            = '�����';
 FZSp_VidOpl_GridColumnOptionsNameGroup_Caption        = '�����';
 FZSp_VidOpl_DockPanelGridOptions_Caption              = '����������';
 FZSp_VidOpl_GridColumnVidOplNachisl_Caption           = '����������';
 FZSp_VidOpl_GridColumnVidOplCash_Caption              = '��������';
 FZSp_VidOpl_GridColumnVidOplKod_Caption               = '���';
 FZSp_VidOpl_GridColumnVidOplGroup_Caption             = '�����';

 FZSp_VidOpl_GridCorColumnNameProp_Caption             = '��� ��������������';
 FZSp_VidOpl_GridConstsColumnNameProp_Caption          = '����� ���������';

 FZSp_VidOpl_LabelTipNach_Caption                      = '��� ����������:';
 FZSp_VidOpl_LabelTipFund_Caption                      = '����:';
 FZSp_VidOpl_LabelDateBeg_Caption                      = '�������:';
 FZSp_VidOpl_LabelDateEnd_Caption                      = '���������:';
 FZSp_VidOpl_SaveChanges_Caption                       = '����������';
 FZSp_VidOpl_SaveChanges_Text1                         = '���� ���������� ���� ������:'+#13;
 FZSp_VidOpl_SaveChanges_Text2                         = #13+'���� ������. �������?';

 //ZFVidOplControl
 ZFVidOplControl_Caption_Insert                        = '��������� ���� ������';
 ZFVidOplControl_Caption_Update                        = '����������� ���� ������';
 ZFVidOplControl_Caption_Delete                        = '��������� ���� ������';
 ZFVidOplControl_IdentificatonBox_Caption              = '��� ������';
 ZFVidOplControl_OptionsBox_Caption                    = '����������';
 ZFVidOplControl_NameLabel_Caption                     = '�����:';
 ZFVidOplControl_KodLabel_Caption                      = '���:';
 ZFVidOplControl_Kod1dfLabel_Caption                   = '��� 1��:';
 ZFVidOplControl_CheckCash_Caption                     = '�������� ���';
 ZFVidOplControl_CheckNachisl_Caption                  = '����������';
 ZFVidOplControl_TypeNachislLabel_Caption              = '��� ����������:';
 ZFVidOplControl_TypeFundLabel_Caption                 = '��� �����:';
 ZFVidOplControl_PeriodBox_Caption                     = '����� 䳿';
 ZFVidOplControl_DateBegLabel_Caption                  = '�������:';
 ZFVidOplControl_DateEndLabel_Caption                  = '����������:';
 ZFVidOplControl_LabelGroup_Caption                    = '������ ��� �����������:';

 //FZ_Vopl_Filter
 FZ_Vopl_Filter_Caption                                     = '������� ���� ����� �����';
 FZ_Vopl_Filter_GridColumnName_Caption                      = '����� �����';

 //VoplFilterControl
 VoplFilterControl_Caption_Insert                      = '��������� �����';
 VoplFilterControl_Caption_Update                      = '����������� �����';
 VoplFilterControl_LabelFullName_Caption               = '����� �����:';

 //VoplPropControlForm_
 VoplPropControlForm_Caption                          = '����������� ������������';
 VoplPropControlFormTreeListColumnName_Caption        = '�����������';
 VoplPropControlFormTreeListColumnUse_Caption         = '������������';

 //FZ_Vopl_Prop
 FZ_Vopl_Prop_Caption                                 = '������� ������������ ���� �����';
 FZ_Vopl_Prop_GridColumnName_Caption                  = '����� ����������';
 FZ_Vopl_Prop_GridChColumnGroupName_Caption           = '����� �����';
 FZ_Vopl_Prop_GridChColumnGroupUse_Caption            = '���������';

 //FZ_Vopl_PropGroup
 FZ_Vopl_PropGroup_Caption                            = '������� ���� ������������ ���� �����';
 FZ_Vopl_PropGroup_GridColumnName_Caption             = '����� �����';
 FZ_Vopl_PropGroup_GridColumnKod_Caption              = '���';
 FZ_Vopl_PropGroup_GridColumnNameGroup_Caption        = '���';
 FZ_Vopl_PropGroup_GridChColumnGroupName_Caption      = '����������';
 FZ_Vopl_PropGroup_GridChColumnGroupUse_Caption       = '���������';

 //FSpVoplIniPropGroupControl
 FSpVoplIniPropGroupControl_Caption                   = '����������';
 FSpVoplIniPropGroupControl_CheckAllBtn_Caption       = '�������� ��';
 FSpVoplIniPropGroupControl_UnCheckAllBtn_Caption     = '³������ ��';

 //VoplPropGroupControl
 VoplPropGroupControl_Caption_Insert                  = '��������� �����';
 VoplPropGroupControl_Caption_Update                  = '����������� �����';
 VoplPropGroupControl_LabelFullName_Caption           = '����� �����';
 VoplPropGroupControl_LabelKod_Caption                = '��� �����';
 VoplPropGroupControl_LabelNameFilter_Caption         = '��� ����� ���������� ���� ������';
 VoplPropGroupControl_ComboBoxFilter_Name_Caption     = '����� ���� �����';

implementation

end.
