unit Unit_Sp_Department_Consts;

interface

resourcestring
//�����
 SelectBtn_Caption                                    = '������';
 SelectAllBtn_Caption                                 = '������ � ���������';
 PrintSvodBtn_Caption                                 = '���� ����';
 RefreshBtn_Caption                                   = '��������';
 ExitBtn_Caption                                      = '�����';
 LocateNextBtn_Caption                                = '  ������ ���';
 Error_Caption                                        = '�������';
 ButtonsControlBar_caption                            = 'ĳ�';

//FZSp_Division
 FZSp_Department_Caption                              = '������� ��������';
 FZSp_Department_TreeListColumnNameDepType_Caption    = '��� ��������';
 FZSp_Department_TreeListColumnShortName_Caption      = '��������� �����';
 FZSp_Department_TreeListColumnSumma_Caption          = '�����';
 FZSp_Department_ColumnOptionName_Caption             = '����� ����������';
 FZSp_Department_TreeListColumnKod_Caption            = '��� ��������';
 FZSp_Department_DockPanelGrid_Caption                = '����������';
 FZSp_Department_ColumnOptionName_FieldName           = 'NAME_DIVISION_OPTION';
 FZSp_Department_TreeList_KeyField                    = 'ID_DEPARTMENT';
 FZSp_Department_TreeList_ParentField                 = 'ID_PARENT';
 FZSp_Department_TreeListColumnShortName_FieldName    = 'NAME_SHORT';
 FZSp_Department_TreeListColumnNameDepType_FieldName  = 'NAME_DEP_TYPE';
 FZSp_Department_TreeListColumnKod_FieldName          = 'DEPARTMENT_KOD';
 FZSp_Department_TreeListColumnSumma_FieldName        = 'SUMMA';
 FZSp_Department_DataSetParent_SelectSQL_Text         = 'SELECT * FROM SP_DEPARTMENT_ZARSELECT';
 FZSp_Department_DataSetChild_SelectSQL_Text          = 'SELECT * FROM Z_DEPARTMENT_PROPERTY_SELECT(:ID_DEPARTMENT)';

 FZSp_Department_Error_Caption                        = '�������';
implementation

end.
