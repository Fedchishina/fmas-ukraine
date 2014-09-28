unit DevExTrans;

(*********************************************************************************
������� ��������� �� ������� ���� ��������� �� Developer Express:
  ExpressBars Suite 5,
  ExpressLibrary,
  ExpressDataController,
  ExpressEditors Library 5,
  ExpressExport Library,
  ExpressPageControl 2,
  ExpressQuantumGrid 5.
  
������� �� ������ ����������� � http://www.FreeDevExpressAddons.com

��� ������������� � ������ INITIALIZATION ������� ����� ���������
����� �������� ����� DevExTranslate(), � � ������ USES �������� ������ DevExTrans.
�����, �������, �������� DevExTranslate() � ��� ������ ���������.

� ������ ���������� ������������ ����������� ������� cxSetResourceString.
**********************************************************************************)

interface

uses
  cxClasses,
  cxLibraryStrs,          // cxLibrary
//  cxPCConsts,             // PageControl2
  cxGridStrs,             // QuantumGrid5
  cxEditConsts,           // Editors5
  cxDataConsts,           // Datacontroller
  cxFilterConsts,         // Filter
  cxFilterControlStrs,    // Filter in Editors5
  cxGridPopupMenuConsts,  // GridPopupMenu
  cxExportStrs,           // GridExport
  cxNavigator,            // cxNavigator
  dxBarStrs;              // dxBars5
  
procedure DevExTranslate;

implementation

procedure DevExTranslate;
begin
  //cxLibrary
  cxSetResourceString(@scxCantCreateRegistryKey, '�� ���� �������� ���� � �����: \%s'); // Can't create the registry key: \%s
  cxSetResourceString(@scxInvalidPropertyElement, 'Invalid property element: %s'); // Invalid property element: %s
  cxSetResourceString(@scxConverterCantCreateStyleRepository, '�� ���� �������� Style Repository'); // Can't create the Style Repository
  //PageControl2
{  cxSetResourceString(@scxPCImageListIndexError, '������ (%d) ������ ���� ����� 0 � %d'); // Index (%d) must be between 0 and %d
  cxSetResourceString(@scxPCNoBaseImages, 'BaseImages is not assigned'); // BaseImages is not assigned
  cxSetResourceString(@scxPCNoRegisteredStyles, '��� ������������������ ������'); // There are no styles registered
  cxSetResourceString(@scxPCPageIndexError, '%d - �������� �������� PageIndex.  PageIndex ������ ���� ����� 0 � %d'); // %d is an invalid PageIndex value.  PageIndex must be between 0 and %d
  cxSetResourceString(@scxPCPainterClassError, 'PCPainterClass is nil'); // PCPainterClass is nil
  cxSetResourceString(@scxPCStandardStyleError, '���������������� ����������� ����� %s'); // %s is an unsupported standard style
  cxSetResourceString(@scxPCStyleNameError, '�������������������� ������������ ����� %s'); // %s is an unregistered style name
  cxSetResourceString(@scxPCTabCountEqualsZero, 'Tabs.Count = 0'); // Tabs.Count = 0
  cxSetResourceString(@scxPCTabIndexError, '������ Tab (%d) ��� ������'); // Tab's index (%d) out of bounds
  cxSetResourceString(@scxPCTabVisibleIndexOutsOfBounds, 'TabVisibleIndex (%d) must be between 0 and %d'); // TabVisibleIndex (%d) must be between 0 and %d
  cxSetResourceString(@scxPCVisibleTabListEmpty, '��� ������� ��������'); // There are no visible tabs
  cxSetResourceString(@scxPCAllowRotateError, '����� %s �� ������������ ������� ��������'); // %s style does not support rotation of tabs}
  //QuantumGrid5
  cxSetResourceString(@scxGridRecursiveLevels, '�� �� ������ ���������� ��������� �����'); // You cannot create recursive levels
  cxSetResourceString(@scxGridDeletingConfirmationCaption, 'ϳ���������'); // Confirm
  cxSetResourceString(@scxGridDeletingFocusedConfirmationText, '�������� �����?'); // Delete record?
  cxSetResourceString(@scxGridDeletingSelectedConfirmationText, '�������� �� ����� ������?'); // Delete all selected records?
//  cxSetResourceString(@scxGridNoDataInfoText, '<��� ������ ��� �����������>'); // <No data to display>
  cxSetResourceString(@scxGridNewItemRowInfoText, '�������� ��� ������� ������'); // Click here to add a new row
  cxSetResourceString(@scxGridFilterIsEmpty, '<������ �������>'); // <Filter is Empty>
  cxSetResourceString(@scxGridCustomizationFormCaption, '�����������'); // Customization
  cxSetResourceString(@scxGridCustomizationFormColumnsPageCaption, '�������'); // Columns
  cxSetResourceString(@scxGridGroupByBoxCaption, '���������� �������� ���� ��� ����������'); // Drag a column header here to group by that column
  cxSetResourceString(@scxGridFilterCustomizeButtonCaption, '�����������...'); // Customize...
//  cxSetResourceString(@scxGridColumnsQuickCustomizationHint, '������� ��� ������ ������� ��������'); // Click here to select visible columns
  cxSetResourceString(@scxGridCustomizationFormBandsPageCaption, '������'); // Bands
//  cxSetResourceString(@scxGridBandsQuickCustomizationHint, '������� ��� ������ ������� ������'); // Click here to select visible bands
//  cxSetResourceString(@scxGridCustomizationFormRowsPageCaption, '������'); // Rows
  cxSetResourceString(@scxGridConverterIntermediaryMissing, '���������� �������� ���������!'#13#10'���������� ������� ��������� %s �� �����.'); // Missing an intermediary component! Please add a %s component to the form.
  cxSetResourceString(@scxGridConverterNotExistGrid, '�� ���� cxGrid'); // cxGrid does not exist
  cxSetResourceString(@scxGridConverterNotExistComponent, '��������� �� ����'); // Component does not exist
  cxSetResourceString(@scxImportErrorCaption, '������� �������'); // Import error
  cxSetResourceString(@scxNotExistGridView, '��� ������� (GridLevel) �� ����'); // Grid view does not exist
  cxSetResourceString(@scxNotExistGridLevel, '�������� ����� (Active GridLevel) �� ����'); // Active grid level does not exist
  cxSetResourceString(@scxCantCreateExportOutputFile, '�� ���� �������� ���� ��� ��������'); // Can't create the export output file
  cxSetResourceString(@cxSEditRepositoryExtLookupComboBoxItem, 'ExtLookupComboBox|Represents an ultra-advanced lookup using the QuantumGrid as its drop down control'); // ExtLookupComboBox|Represents an ultra-advanced lookup using the QuantumGrid as its drop down control
//  cxSetResourceString(@scxGridChartValueHintFormat, '''%s'' ��� ''%s'': ''%s''');  // '%s for %s is %s' - series display text, category, value
  //Editors5
//  cxSetResourceString(@cxSEditDateConvertError, '���������� ������������� � ����'); // Could not convert to date
  cxSetResourceString(@cxSEditInvalidRepositoryItem, '������� �� ����������� ����������'); // The repository item is not acceptable
  cxSetResourceString(@cxSEditNumericValueConvertError, '���������� ������������� � �������� ��������'); // Could not convert to numeric value
  cxSetResourceString(@cxSEditPopupCircularReferencingError, '����������� ������ ����������'); // Circular referencing is not allowed
  cxSetResourceString(@cxSEditPostError, '��������� ������ ��� ���������� ��������'); // An error occured during posting edit value
  cxSetResourceString(@cxSEditTimeConvertError, '���������� ������������� � ������ �������'); // Could not convert to time
  cxSetResourceString(@cxSEditValidateErrorText, '�������� ��������. ����������� ������� Esc ��� ������ ���������'); // Invalid input value. Use escape key to abandon changes
  cxSetResourceString(@cxSEditValueOutOfBounds, '�������� �� ��������� ���������'); // Value out of bounds
  // TODO
  cxSetResourceString(@cxSEditCheckBoxChecked, 'True'); // True
  cxSetResourceString(@cxSEditCheckBoxGrayed, ''); //
  cxSetResourceString(@cxSEditCheckBoxUnchecked, 'False'); // False
  cxSetResourceString(@cxSRadioGroupDefaultCaption, ''); //
  cxSetResourceString(@cxSTextTrue, 'True'); // True
  cxSetResourceString(@cxSTextFalse, 'False'); // False
  // blob
  cxSetResourceString(@cxSBlobButtonOK, '&OK'); // &OK
  cxSetResourceString(@cxSBlobButtonCancel, '&������'); // &Cancel
  cxSetResourceString(@cxSBlobButtonClose, '&�������'); // &Close
  cxSetResourceString(@cxSBlobMemo, '(MEMO)'); // (MEMO)
  cxSetResourceString(@cxSBlobMemoEmpty, '(memo)'); // (memo)
  cxSetResourceString(@cxSBlobPicture, '(�����������)'); // (PICTURE)
  cxSetResourceString(@cxSBlobPictureEmpty, '(�����������)'); // (picture)
  // popup menu items
  cxSetResourceString(@cxSMenuItemCaptionCut, '��&������'); // Cu&t
  cxSetResourceString(@cxSMenuItemCaptionCopy, '&����������'); // &Copy
  cxSetResourceString(@cxSMenuItemCaptionPaste, '&��������'); // &Paste
  cxSetResourceString(@cxSMenuItemCaptionDelete, '&�������'); // &Delete
  cxSetResourceString(@cxSMenuItemCaptionLoad, '&���������...'); // &Load...
  cxSetResourceString(@cxSMenuItemCaptionSave, '��������� &���...'); // Save &As...
  // date
  cxSetResourceString(@cxSDatePopupClear, '��������'); // Clear
//  cxSetResourceString(@cxSDatePopupNow, '������'); // Now
//  cxSetResourceString(@cxSDatePopupOK, 'OK'); // OK
  cxSetResourceString(@cxSDatePopupToday, '�������'); // Today
  cxSetResourceString(@cxSDateError, '�������� ����'); // Invalid Date
  // smart input consts
  cxSetResourceString(@cxSDateToday, '�������'); // today
  cxSetResourceString(@cxSDateYesterday, '�����'); // yesterday
  cxSetResourceString(@cxSDateTomorrow, '������'); // tomorrow
  cxSetResourceString(@cxSDateSunday, '����������'); // Sunday
  cxSetResourceString(@cxSDateMonday, '��������'); // Monday
  cxSetResourceString(@cxSDateTuesday, '³������'); // Tuesday
  cxSetResourceString(@cxSDateWednesday, '������'); // Wednesday
  cxSetResourceString(@cxSDateThursday, '������'); // Thursday
  cxSetResourceString(@cxSDateFriday, '�''������'); // Friday
  cxSetResourceString(@cxSDateSaturday, '������'); // Saturday
  cxSetResourceString(@cxSDateFirst, '������'); // first
  cxSetResourceString(@cxSDateSecond, '������'); // second
  cxSetResourceString(@cxSDateThird, '�����'); // third
  cxSetResourceString(@cxSDateFourth, '���������'); // fourth
  cxSetResourceString(@cxSDateFifth, '�''����'); // fifth
  cxSetResourceString(@cxSDateSixth, '������'); // sixth
  cxSetResourceString(@cxSDateSeventh, '������'); // seventh
  cxSetResourceString(@cxSDateBOM, '̳����'); // bom
  cxSetResourceString(@cxSDateEOM, '̳����'); // eom
  cxSetResourceString(@cxSDateNow, '�����'); // now
  // calculator
  cxSetResourceString(@scxSCalcError, 'Error'); // Error
  // HyperLink
//  cxSetResourceString(@scxSHyperLinkPrefix, 'http://'); // http://
//  cxSetResourceString(@scxSHyperLinkDoubleSlash, '//'); // //
  // edit repository
  cxSetResourceString(@scxSEditRepositoryBlobItem, 'BlobEdit|Represents the BLOB editor'); // BlobEdit|Represents the BLOB editor
  cxSetResourceString(@scxSEditRepositoryButtonItem, 'ButtonEdit|Represents an edit control with embedded buttons'); // ButtonEdit|Represents an edit control with embedded buttons
  cxSetResourceString(@scxSEditRepositoryCalcItem, 'CalcEdit|Represents an edit control with a dropdown calculator window'); // CalcEdit|Represents an edit control with a dropdown calculator window
  cxSetResourceString(@scxSEditRepositoryCheckBoxItem, 'CheckBox|Represents a check box control that allows selecting an option'); // CheckBox|Represents a check box control that allows selecting an option
  cxSetResourceString(@scxSEditRepositoryComboBoxItem, 'ComboBox|Represents the combo box editor'); // ComboBox|Represents the combo box editor
  cxSetResourceString(@scxSEditRepositoryCurrencyItem, 'CurrencyEdit|Represents an editor enabling editing currency data'); // CurrencyEdit|Represents an editor enabling editing currency data
  cxSetResourceString(@scxSEditRepositoryDateItem, 'DateEdit|Represents an edit control with a dropdown calendar'); // DateEdit|Represents an edit control with a dropdown calendar
  cxSetResourceString(@scxSEditRepositoryHyperLinkItem , 'HyperLink|Represents a text editor with hyperlink functionality'); // HyperLink|Represents a text editor with hyperlink functionality
  cxSetResourceString(@scxSEditRepositoryImageComboBoxItem, 'ImageComboBox|Represents an editor displaying the list of images and text strings within the dropdown window'); // ImageComboBox|Represents an editor displaying the list of images and text strings within the dropdown window
  cxSetResourceString(@scxSEditRepositoryImageItem, 'Image|Represents an image editor'); // Image|Represents an image editor
  cxSetResourceString(@scxSEditRepositoryLookupComboBoxItem, 'LookupComboBox|Represents a lookup combo box control'); // LookupComboBox|Represents a lookup combo box control
  cxSetResourceString(@scxSEditRepositoryMaskItem, 'MaskEdit|Represents a generic masked edit control.'); // MaskEdit|Represents a generic masked edit control.
  cxSetResourceString(@scxSEditRepositoryMemoItem, 'Memo|Represents an edit control that allows editing memo data'); // Memo|Represents an edit control that allows editing memo data
  cxSetResourceString(@scxSEditRepositoryMRUItem , 'MRUEdit|Represents a text editor displaying the list of most recently used items (MRU) within a dropdown window'); // MRUEdit|Represents a text editor displaying the list of most recently used items (MRU) within a dropdown window
  cxSetResourceString(@scxSEditRepositoryPopupItem, 'PopupEdit|Represents an edit control with a dropdown list'); // PopupEdit|Represents an edit control with a dropdown list
  cxSetResourceString(@scxSEditRepositorySpinItem, 'SpinEdit|Represents a spin editor'); // SpinEdit|Represents a spin editor
  cxSetResourceString(@scxSEditRepositoryRadioGroupItem, 'RadioGroup|Represents a group of radio buttons'); // RadioGroup|Represents a group of radio buttons
  cxSetResourceString(@scxSEditRepositoryTextItem, 'TextEdit|Represents a single line text editor'); // TextEdit|Represents a single line text editor
  cxSetResourceString(@scxSEditRepositoryTimeItem, 'TimeEdit|Represents an editor displaying time values'); // TimeEdit|Represents an editor displaying time values
  //
  cxSetResourceString(@scxRegExprLine, '������'); // Line
  cxSetResourceString(@scxRegExprChar, '������'); // Char
  cxSetResourceString(@scxRegExprNotAssignedSourceStream, '�� �������� �����-��������'); // The source stream is not assigned
  cxSetResourceString(@scxRegExprEmptySourceStream, '�����-�������� ����'); // The source stream is empty
  cxSetResourceString(@scxRegExprCantUsePlusQuantifier, '������������� ''+'' �� ����� ���� �������� �����'); // The '+' quantifier cannot be applied here
  cxSetResourceString(@scxRegExprCantUseStarQuantifier, '������������� ''*'' �� ����� ���� �������� �����'); // The '*' quantifier cannot be applied here
  cxSetResourceString(@scxRegExprCantCreateEmptyAlt, 'The alternative should not be empty'); // The alternative should not be empty
  cxSetResourceString(@scxRegExprCantCreateEmptyBlock, '���� �� ������ ���� ����'); // The block should not be empty
  cxSetResourceString(@scxRegExprIllegalSymbol, '�������: ''%s'''); // Illegal '%s'
  cxSetResourceString(@scxRegExprIllegalQuantifier, '�������� �������������: ''%s'''); // Illegal quantifier '%s'
  cxSetResourceString(@scxRegExprNotSupportQuantifier, 'The parameter quantifiers are not supported'); // The parameter quantifiers are not supported
  cxSetResourceString(@scxRegExprIllegalIntegerValue, '�������� ����� ��������'); // Illegal integer value
  cxSetResourceString(@scxRegExprTooBigReferenceNumber, '�����-������ ������� ������'); // Too big reference number
  cxSetResourceString(@scxRegExprCantCreateEmptyEnum, '�� ���� ������� ������ ������������'); // Can't create empty enumeration
  cxSetResourceString(@scxRegExprSubrangeOrder, '��������� ������ ������������ ������ ���� ������ ���������'); // The starting character of the subrange must be less than the finishing one
  cxSetResourceString(@scxRegExprHexNumberExpected0, '��������� ����������������� �����'); // Hexadecimal number expected
  cxSetResourceString(@scxRegExprHexNumberExpected, '��������� ����������������� �����, �� ������� ''%s'''); // Hexadecimal number expected but '%s' found
  cxSetResourceString(@scxRegExprMissing, '��������� ''%s'''); // Missing '%s'
  cxSetResourceString(@scxRegExprUnnecessary, '�������� ''%s'''); // Unnecessary '%s'
  cxSetResourceString(@scxRegExprIncorrectSpace, '������ �� ����������� ����� ''\'''); // The space character is not allowed after '\'
  cxSetResourceString(@scxRegExprNotCompiled, '���������� ��������� �� ���������'); // Regular expression is not compiled
  cxSetResourceString(@scxRegExprIncorrectParameterQuantifier, 'Incorrect parameter quantifier'); // Incorrect parameter quantifier
  cxSetResourceString(@scxRegExprCantUseParameterQuantifier, 'The parameter quantifier cannot be applied here'); // The parameter quantifier cannot be applied here
  //
  cxSetResourceString(@scxMaskEditRegExprError, '������ � ���������� ���������:'); // Regular expression errors:
  cxSetResourceString(@scxMaskEditInvalidEditValue, '������������� �������� �������'); // The edit value is invalid
  cxSetResourceString(@scxMaskEditNoMask, 'None'); // None
  cxSetResourceString(@scxMaskEditIllegalFileFormat, '�������� ������ �����'); // Illegal file format
  cxSetResourceString(@scxMaskEditEmptyMaskCollectionFile, '���� � ������� ����� ����'); // The mask collection file is empty
  cxSetResourceString(@scxMaskEditMaskCollectionFiles, '����� � �������� �����'); // Mask collection files
//  cxSetResourceString(@cxSSpinEditInvalidNumericValue, '�������� �������� ��������'); // Invalid numeric value
  //Datacontroller
  cxSetResourceString(@cxSDataReadError, '������ ������ �� ������'); // Stream read error
  cxSetResourceString(@cxSDataWriteError, '������ ������ � �����'); // Stream write error
  cxSetResourceString(@cxSDataItemExistError, '������� ��� ����������'); // Item already exists
  cxSetResourceString(@cxSDataRecordIndexError, '������ ������ �� ��������� ���������'); // RecordIndex out of range
  cxSetResourceString(@cxSDataItemIndexError, '������ �������� �� ��������� ���������'); // ItemIndex out of range
  cxSetResourceString(@cxSDataProviderModeError, '��� �������� �� �������������� � ������ ''provider'''); // This operation is not supported in provider mode
  cxSetResourceString(@cxSDataInvalidStreamFormat, '�������� ������ ������'); // Invalid stream format
  cxSetResourceString(@cxSDataRowIndexError, '������ ������ �� ��������� ���������'); // RowIndex out of range
  cxSetResourceString(@cxSDataCustomDataSourceInvalidCompare, 'GetInfoForCompare �� ������������'); // GetInfoForCompare not implemented
  cxSetResourceString(@cxSDBDetailFilterControllerNotFound, 'DetailFilterController �� ������'); // DetailFilterController not found
  cxSetResourceString(@cxSDBNotInGridMode, 'DataController �� � ������ GridMode'); // DataController not in GridMode
//  cxSetResourceString(@cxSDBKeyFieldNotFound, '�������� ���� �� �������'); // Key Field not found
  //Filter
  cxSetResourceString(@cxSFilterOperatorEqual, '����'); // equals
  cxSetResourceString(@cxSFilterOperatorNotEqual, '�� ����'); // does not equal
  cxSetResourceString(@cxSFilterOperatorLess, '���� ��'); // is less than
  cxSetResourceString(@cxSFilterOperatorLessEqual, '���� ��� ���� ��'); // is less than or equal to
  cxSetResourceString(@cxSFilterOperatorGreater, '���� ��'); // is greater than
  cxSetResourceString(@cxSFilterOperatorGreaterEqual, '���� ��� ���� ��'); // is greater than or equal to
  cxSetResourceString(@cxSFilterOperatorLike, '������ ��'); // like
  cxSetResourceString(@cxSFilterOperatorNotLike, '�� ������ ��'); // not like
  cxSetResourceString(@cxSFilterOperatorBetween, '��'); // between
  cxSetResourceString(@cxSFilterOperatorNotBetween, '�� ������� ��'); // not between
  cxSetResourceString(@cxSFilterOperatorInList, '�'); // in
  cxSetResourceString(@cxSFilterOperatorNotInList, '�� ������� ��'); // not in

  cxSetResourceString(@cxSFilterOperatorYesterday, '�����'); // is yesterday
  cxSetResourceString(@cxSFilterOperatorToday, '�������'); // is today
  cxSetResourceString(@cxSFilterOperatorTomorrow, '������'); // is tomorrow
  cxSetResourceString(@cxSFilterOperatorLastWeek, '������� �������'); // is last week
  cxSetResourceString(@cxSFilterOperatorLastMonth, '������� �����'); // is last month
  cxSetResourceString(@cxSFilterOperatorLastYear, '������� ��'); // is last year
  cxSetResourceString(@cxSFilterOperatorThisWeek, '� ����� ����'); // is this week
  cxSetResourceString(@cxSFilterOperatorThisMonth, '� ����� �����'); // is this month
  cxSetResourceString(@cxSFilterOperatorThisYear, '� ����� ����'); // is this year
  cxSetResourceString(@cxSFilterOperatorNextWeek, '��������� �������'); // is next week
  cxSetResourceString(@cxSFilterOperatorNextMonth, '��������� �����'); // is next month
  cxSetResourceString(@cxSFilterOperatorNextYear, '��������� ��'); // is next year
  cxSetResourceString(@cxSFilterAndCaption, '�'); // and
  cxSetResourceString(@cxSFilterOrCaption, '���'); // or
  cxSetResourceString(@cxSFilterNotCaption, '��'); // not
  cxSetResourceString(@cxSFilterBlankCaption, '�����'); // blank
  cxSetResourceString(@cxSFilterOperatorIsNull, '������'); // is blank
  cxSetResourceString(@cxSFilterOperatorIsNotNull, '�� ������'); // is not blank
  cxSetResourceString(@cxSFilterOperatorBeginsWith, '���������� �'); // begins with
  cxSetResourceString(@cxSFilterOperatorDoesNotBeginWith, '�� ���������� �'); // does not begin with
  cxSetResourceString(@cxSFilterOperatorEndsWith, '���������� ��'); // ends with
  cxSetResourceString(@cxSFilterOperatorDoesNotEndWith, '�� ���������� ��'); // does not end with
  cxSetResourceString(@cxSFilterOperatorContains, '������'); // contains
  cxSetResourceString(@cxSFilterOperatorDoesNotContain, '�� ������'); // does not contain
  cxSetResourceString(@cxSFilterBoxAllCaption, '(���)'); // (All)
  cxSetResourceString(@cxSFilterBoxCustomCaption, '(�����������...)'); // (Custom...)
  cxSetResourceString(@cxSFilterBoxBlanksCaption, '(������)'); // (Blanks)
  cxSetResourceString(@cxSFilterBoxNonBlanksCaption, '(�� ������)'); // (NonBlanks)

  cxSetResourceString(@cxSFilterBoolOperatorAnd, '�'); // AND
  cxSetResourceString(@cxSFilterBoolOperatorOr, '���'); // OR
  cxSetResourceString(@cxSFilterBoolOperatorNotAnd, '�� �'); // NOT AND
  cxSetResourceString(@cxSFilterBoolOperatorNotOr, '�� ���'); // NOT OR

  cxSetResourceString(@cxSFilterRootButtonCaption, 'Գ����'); // Filter
  cxSetResourceString(@cxSFilterAddCondition, '������ &�����'); // Add &Condition
  cxSetResourceString(@cxSFilterAddGroup, '������ &�����'); // Add &Group
  cxSetResourceString(@cxSFilterRemoveRow, '&�������� ������'); // &Remove Row
  cxSetResourceString(@cxSFilterClearAll, '�������� &���'); // Clear &All
  cxSetResourceString(@cxSFilterFooterAddCondition, '�������, ����� �������� ����� �������'); // press the button to add a new condition

  cxSetResourceString(@cxSFilterGroupCaption, '��������� ��������� �������'); // applies to the following conditions
  cxSetResourceString(@cxSFilterRootGroupCaption, '<������>'); // <root>
  cxSetResourceString(@cxSFilterControlNullString, '<�����>'); // <empty>

  cxSetResourceString(@cxSFilterErrorBuilding, '���������� ������� ������ �� ���������'); // Can't build filter from source

  cxSetResourceString(@cxSFilterDialogCaption, '��������� �������'); // Custom Filter
  cxSetResourceString(@cxSFilterDialogInvalidValue, '�������� ��������'); // Invalid value
  cxSetResourceString(@cxSFilterDialogUse, '������������'); // Use
  cxSetResourceString(@cxSFilterDialogSingleCharacter, '��� �������� ������ �����'); // to represent any single character
  cxSetResourceString(@cxSFilterDialogCharactersSeries, '��� �������� ������ ������'); // to represent any series of characters
  cxSetResourceString(@cxSFilterDialogOperationAnd, '�'); // AND
  cxSetResourceString(@cxSFilterDialogOperationOr, '���'); // OR
  cxSetResourceString(@cxSFilterDialogRows, '�������� ������, ��� �������:'); // Show rows where:

  cxSetResourceString(@cxSFilterControlDialogCaption, '����������� �������'); // Filter builder
  cxSetResourceString(@cxSFilterControlDialogNewFile, 'untitled.flt'); // untitled.flt
  cxSetResourceString(@cxSFilterControlDialogOpenDialogCaption, '������� ������������ ������'); // Open an existing filter
  cxSetResourceString(@cxSFilterControlDialogSaveDialogCaption, '��������� �������� ������ � ����'); // Save the active filter to file
  cxSetResourceString(@cxSFilterControlDialogActionSaveCaption, '��&������� ���...'); // &Save As...
  cxSetResourceString(@cxSFilterControlDialogActionOpenCaption, '&���������...'); // &Open...
  cxSetResourceString(@cxSFilterControlDialogActionApplyCaption, '&���������'); // &Apply
  cxSetResourceString(@cxSFilterControlDialogActionOkCaption, 'OK'); // OK
  cxSetResourceString(@cxSFilterControlDialogActionCancelCaption, '������'); // Cancel
  cxSetResourceString(@cxSFilterControlDialogFileExt, 'flt'); // flt
  cxSetResourceString(@cxSFilterControlDialogFileFilter, '������� (*.flt)|*.flt'); // Filters (*.flt)|*.flt
  //GridPopupMenu
  cxSetResourceString(@cxSGridNone, '�������'); // None
  cxSetResourceString(@cxSGridSortColumnAsc, '���������� �� �����������'); // Sort Ascending
  cxSetResourceString(@cxSGridSortColumnDesc, '���������� �� ��������'); // Sort Descending
//  cxSetResourceString(@cxSGridClearSorting, '������ ����������'); // Clear Sorting
  cxSetResourceString(@cxSGridGroupByThisField, '������������ �� ����� ����'); // Group By This Field
  cxSetResourceString(@cxSGridRemoveThisGroupItem, '������ �� �����������'); // Remove from grouping
  cxSetResourceString(@cxSGridGroupByBox, '������ �����������'); // Group By Box
  cxSetResourceString(@cxSGridAlignmentSubMenu, '������������'); // Alignment
  cxSetResourceString(@cxSGridAlignLeft, '��������� �� �����'); // Align Left
  cxSetResourceString(@cxSGridAlignRight, '��������� �� ������'); // Align Right
  cxSetResourceString(@cxSGridAlignCenter, '��������� �� ������'); // Align Center
  cxSetResourceString(@cxSGridRemoveColumn, '������� �������'); // Remove This Column
  cxSetResourceString(@cxSGridFieldChooser, '����� ����'); // Field Chooser
  cxSetResourceString(@cxSGridBestFit, '���� ����������'); // Best Fit
  cxSetResourceString(@cxSGridBestFitAllColumns, '���� ���������� (��� �������)'); // Best Fit (all columns)
  cxSetResourceString(@cxSGridShowFooter, '������ ������'); // Footer
  cxSetResourceString(@cxSGridShowGroupFooter, '����������� ������ ������'); // Group Footers

  cxSetResourceString(@cxSGridSumMenuItem, '�����'); // Sum
  cxSetResourceString(@cxSGridMinMenuItem, '�������'); // Min
  cxSetResourceString(@cxSGridMaxMenuItem, '��������'); // Max
  cxSetResourceString(@cxSGridCountMenuItem, '����������'); // Count
  cxSetResourceString(@cxSGridAvgMenuItem, '�������'); // Average
  cxSetResourceString(@cxSGridNoneMenuItem, '���'); // None
  //GridExport
  cxSetResourceString(@scxUnsupportedExport, '���������������� ��� ��������: %1'); // Unsupported export type: %1
  cxSetResourceString(@scxStyleManagerKill, 'Style Manager � ������ ������ ������������ � �� ����� ���� ����������'); // The Style Manager is currently being used elsewhere and can not be released at this stage
  cxSetResourceString(@scxStyleManagerCreate, '���������� ������� style manager'); // Can't create style manager
  cxSetResourceString(@scxExportToHtml, '������� � Web �������� (*.html)'); // Export to Web page (*.html)
  cxSetResourceString(@scxExportToXml, '������� � XML �������� (*.xml)'); // Export to XML document (*.xml)
  cxSetResourceString(@scxExportToText, '������� � ������ ������ (*.txt)'); // Export to text format (*.txt)
  cxSetResourceString(@scxEmptyExportCache, '��� �������� ����'); // Export cache is empty
  cxSetResourceString(@scxIncorrectUnion, '�������� ����������� �����'); // Incorrect union of cells
  cxSetResourceString(@scxIllegalWidth, '�������� ������ �������'); // Illegal width of the column
  cxSetResourceString(@scxInvalidColumnRowCount, '�������� ���������� ����� ��� ��������'); // Invalid column or row count
  cxSetResourceString(@scxIllegalHeight, '�������� ������ ������'); // Illegal height of the row
  cxSetResourceString(@scxInvalidColumnIndex, '������ ������� %d �� ��������� ���������'); // The column index %d out of bounds
  cxSetResourceString(@scxInvalidRowIndex, '������ ������ %d �� ��������� ���������'); // The row index %d out of bounds
  cxSetResourceString(@scxInvalidStyleIndex, '�������� ������ ����� %d'); // Invalid style index %d
  cxSetResourceString(@scxExportToExcel, '������� � MS Excel (*.xls)'); // Export to MS Excel (*.xls)
  cxSetResourceString(@scxWorkbookWrite, '������ ������ XLS �����'); // Error write XLS file
  cxSetResourceString(@scxInvalidCellDimension, '�������� ������� �������'); // Invalid cell dimension
  cxSetResourceString(@scxBoolTrue, 'True'); // True
  cxSetResourceString(@scxBoolFalse, 'False'); // False
  //cxNavigator
  cxSetResourceString(@cxNavigatorHint_First, '������ ������'); // First record
  cxSetResourceString(@cxNavigatorHint_Prior, '���������� ������'); // Prior record
  cxSetResourceString(@cxNavigatorHint_PriorPage, '���������� ��������'); // Prior page
  cxSetResourceString(@cxNavigatorHint_Next, '��������� ������'); // Next record
  cxSetResourceString(@cxNavigatorHint_NextPage, '��������� ��������'); // Next page
  cxSetResourceString(@cxNavigatorHint_Last, '��������� ������'); // Last record
  cxSetResourceString(@cxNavigatorHint_Insert, '�������� ������'); // Insert record
  cxSetResourceString(@cxNavigatorHint_Delete, '������� ������'); // Delete record
  cxSetResourceString(@cxNavigatorHint_Edit, '������������� ������'); // Edit record
  cxSetResourceString(@cxNavigatorHint_Post, '��������� ������'); // Post edit
  cxSetResourceString(@cxNavigatorHint_Cancel, '�������� ��������������'); // Cancel edit
  cxSetResourceString(@cxNavigatorHint_Refresh, '�������� ������'); // Refresh data
  cxSetResourceString(@cxNavigatorHint_SaveBookmark, '��������� ��������'); // Save Bookmark
  cxSetResourceString(@cxNavigatorHint_GotoBookmark, '������� � ��������'); // Goto Bookmark
  cxSetResourceString(@cxNavigatorHint_Filter, '������ ������'); // Filter data
  cxSetResourceString(@cxNavigator_DeleteRecordQuestion, '������� ������?'); // Delete record?

  // dxBars5
  cxSetResourceString(@dxSBAR_LOOKUPDIALOGCAPTION, '�������� ��������'); // Select value
  cxSetResourceString(@dxSBAR_LOOKUPDIALOGOK, 'OK'); // OK
  cxSetResourceString(@dxSBAR_LOOKUPDIALOGCANCEL, '������'); // Cancel
  cxSetResourceString(@dxSBAR_DIALOGOK, 'OK'); // OK
  cxSetResourceString(@dxSBAR_DIALOGCANCEL, '������'); // Cancel
  cxSetResourceString(@dxSBAR_COLOR_STR_0, '������'); // Black
  cxSetResourceString(@dxSBAR_COLOR_STR_1, '������-����������'); // Maroon
  cxSetResourceString(@dxSBAR_COLOR_STR_2, '�������'); // Green
  cxSetResourceString(@dxSBAR_COLOR_STR_3, '���������'); // Olive
  cxSetResourceString(@dxSBAR_COLOR_STR_4, '�����-�����'); // Navy
  cxSetResourceString(@dxSBAR_COLOR_STR_5, '����������'); // Purple
  cxSetResourceString(@dxSBAR_COLOR_STR_6, '��������'); // Teal
  cxSetResourceString(@dxSBAR_COLOR_STR_7, '�����'); // Gray
  cxSetResourceString(@dxSBAR_COLOR_STR_8, '����������'); // Silver
  cxSetResourceString(@dxSBAR_COLOR_STR_9, '�������'); // Red
  cxSetResourceString(@dxSBAR_COLOR_STR_10, '����-�������'); // Lime
  cxSetResourceString(@dxSBAR_COLOR_STR_11, '������'); // Yellow
  cxSetResourceString(@dxSBAR_COLOR_STR_12, '�������'); // Blue
  cxSetResourceString(@dxSBAR_COLOR_STR_13, '������'); // Fuchsia
  cxSetResourceString(@dxSBAR_COLOR_STR_14, '����'); // Aqua
  cxSetResourceString(@dxSBAR_COLOR_STR_15, '�����'); // White
  cxSetResourceString(@dxSBAR_COLORAUTOTEXT, '(�������������)'); // (automatic)
  cxSetResourceString(@dxSBAR_COLORCUSTOMTEXT, '(�����������)'); // (custom)
  cxSetResourceString(@dxSBAR_DATETODAY, '�������'); // Today
  cxSetResourceString(@dxSBAR_DATECLEAR, '��������'); // Clear
  cxSetResourceString(@dxSBAR_DATEDIALOGCAPTION, '�������� ����'); // Select the date
  cxSetResourceString(@dxSBAR_TREEVIEWDIALOGCAPTION, '�������� �������'); // Select item
  cxSetResourceString(@dxSBAR_IMAGEDIALOGCAPTION, '�������� �������'); // Select item
  cxSetResourceString(@dxSBAR_IMAGEINDEX, '������ �����������'); // Image Index
  cxSetResourceString(@dxSBAR_IMAGETEXT, '�����'); // Text
  cxSetResourceString(@dxSBAR_PLACEFORCONTROL, '����� ���'); // The place for the
  cxSetResourceString(@dxSBAR_CANTASSIGNCONTROL, '�� �� ������ ����������� ���� � ��� �� ������� ����� ��� ������ TdxBarControlContainerItem.'); // You cannot assign the same control to more than one TdxBarControlContainerItem.
  cxSetResourceString(@dxSBAR_WANTTORESETTOOLBAR, '�� ������������� ������ �������� ��������� ������ ''%s'' ?'); // Are you sure you want to reset the changes made to the '%s' toolbar?
  cxSetResourceString(@dxSBAR_WANTTORESETUSAGEDATA, '��� ������� ������� ��� ������ � ��������, ������� �� ������������ � ���� ����������, � ����������� ��������� �� ���������. �� ������ ����������?'); // This will delete the record of the commands you've used in this application and restore the default set of visible commands to the menus and toolbars. It will not undo any explicit customizations.   Are you sure you want to proceed?
  cxSetResourceString(@dxSBAR_BARMANAGERMORETHENONE, '����� ������ ��������� ������ ���� TdxBarManager'); // A Form should contain only a single TdxBarManager
  cxSetResourceString(@dxSBAR_BARMANAGERBADOWNER, 'TdxBarManager ������ ����� ��������� - TForm (TCustomForm)'); // TdxBarManager should have as its Owner - TForm (TCustomForm)
  cxSetResourceString(@dxSBAR_NOBARMANAGERS, '��� ��������� TdxBarManagers'); // There are no TdxBarManagers available
  cxSetResourceString(@dxSBAR_WANTTODELETETOOLBAR, '�� ������������� ������ ������� ������ ''%s''?'); // Are you sure you want to delete the '%s' toolbar?
  cxSetResourceString(@dxSBAR_WANTTODELETECATEGORY, '�� ������������� ������ ������� ��������� ''%s''?'); // Are you sure you want to delete the '%s' category?
  cxSetResourceString(@dxSBAR_WANTTOCLEARCOMMANDS, '�� ������������� ������ ������� ��� ������� � ��������� ''%s''?'); // Are you sure you want to delete all commands in the '%s' category?
  cxSetResourceString(@dxSBAR_RECURSIVESUBITEMS, '�� �� ������ ��������� ����������� �������'); // You cannot create recursive subitems
  cxSetResourceString(@dxSBAR_COMMANDNAMECANNOTBEBLANK, '��� ������� �� ����� ���� ������. ������� ���.'); // A command name cannot be blank. Please enter a name.
  cxSetResourceString(@dxSBAR_TOOLBAREXISTS, '������ � ������ ''%s'' ��� ����������. ������� ������ ���.'); // A toolbar named '%s' already exists. Type another name.
  cxSetResourceString(@dxSBAR_RECURSIVEGROUPS, '�� �� ������ ��������� ����������� ������'); // You cannot create recursive groups
  cxSetResourceString(@dxSBAR_DEFAULTCATEGORYNAME, '�� ���������'); // Default
  cxSetResourceString(@dxSBAR_CP_ADDSUBITEM, '�������� &�������'); // Add &SubItem
  cxSetResourceString(@dxSBAR_CP_ADDBUTTON, '�������� &������'); // Add &Button
  cxSetResourceString(@dxSBAR_CP_ADDITEM, '�������� &������'); // Add &Item
  cxSetResourceString(@dxSBAR_CP_DELETEBAR, '������� g�����'); // Delete Bar
  cxSetResourceString(@dxSBAR_CP_RESET, '�&����'); // &Reset
  cxSetResourceString(@dxSBAR_CP_DELETE, '&�������'); // &Delete
  cxSetResourceString(@dxSBAR_CP_NAME, '&���:'); // &Name:
  cxSetResourceString(@dxSBAR_CP_CAPTION, '&���������:'); // &Caption:
  cxSetResourceString(@dxSBAR_CP_DEFAULTSTYLE, '&�������� �����'); // Defa&ult style
  cxSetResourceString(@dxSBAR_CP_TEXTONLYALWAYS, '���&��� ����� (������)'); // &Text Only (Always)
  cxSetResourceString(@dxSBAR_CP_TEXTONLYINMENUS, '��&���� ����� (� ����)'); // Text &Only (in Menus)
  cxSetResourceString(@dxSBAR_CP_IMAGEANDTEXT, '�������� &� �����'); // Image &and Text
  cxSetResourceString(@dxSBAR_CP_BEGINAGROUP, '������ &������'); // Begin a &Group
  cxSetResourceString(@dxSBAR_CP_VISIBLE, '&�������'); // &Visible
  cxSetResourceString(@dxSBAR_CP_MOSTRECENTLYUSED, '&�������� ������ ������������'); // &Most recently used
  cxSetResourceString(@dxSBAR_ADDEX, '��������..'); // Add...
  cxSetResourceString(@dxSBAR_RENAMEEX, '�������������...'); // Rename...
  cxSetResourceString(@dxSBAR_DELETE, '�������'); // Delete
  cxSetResourceString(@dxSBAR_CLEAR, '��������'); // Clear
  cxSetResourceString(@dxSBAR_VISIBLE, '�������'); // Visible
  cxSetResourceString(@dxSBAR_OK, 'OK'); // OK
  cxSetResourceString(@dxSBAR_CANCEL, '������'); // Cancel
  cxSetResourceString(@dxSBAR_SUBMENUEDITOR, '�������� �������...'); // SubMenu Editor...
  cxSetResourceString(@dxSBAR_SUBMENUEDITORCAPTION, '�������� �������...'); // ExpressBars SubMenu Editor
  cxSetResourceString(@dxSBAR_INSERTEX, '��������...'); // Insert...
  cxSetResourceString(@dxSBAR_MOVEUP, '����������� �����'); // Move Up
  cxSetResourceString(@dxSBAR_MOVEDOWN, '����������� ����'); // Move Down
  cxSetResourceString(@dxSBAR_POPUPMENUEDITOR, '�������� ���������� ����...'); // PopupMenu Editor...
  cxSetResourceString(@dxSBAR_TABSHEET1, '������ ������������'); //  Toolbars
  cxSetResourceString(@dxSBAR_TABSHEET2, '��������'); //  Commands
  cxSetResourceString(@dxSBAR_TABSHEET3, '���������'); //  Options
  cxSetResourceString(@dxSBAR_TOOLBARS, '������ &������������:'); // Toolb&ars:
  cxSetResourceString(@dxSBAR_TNEW, '&�����...'); // &New...
  cxSetResourceString(@dxSBAR_TRENAME, '�&������������...'); // R&ename...
  cxSetResourceString(@dxSBAR_TDELETE, '&�������'); // &Delete
  cxSetResourceString(@dxSBAR_TRESET, '&��������...'); // &Reset...
  cxSetResourceString(@dxSBAR_CLOSE, '�������'); // Close
  cxSetResourceString(@dxSBAR_CAPTION, '���������'); // Customize
  cxSetResourceString(@dxSBAR_CATEGORIES, '����&�����:'); // Cate&gories:
  cxSetResourceString(@dxSBAR_COMMANDS, '�������&�:'); // Comman&ds:
  cxSetResourceString(@dxSBAR_DESCRIPTION, '��������'); // Description
  cxSetResourceString(@dxSBAR_CUSTOMIZE, '&���������...'); // &Customize...
  cxSetResourceString(@dxSBAR_ADDREMOVEBUTTONS, '&�������� ��� ������� ������'); // &Add or Remove Buttons
  cxSetResourceString(@dxSBAR_MOREBUTTONS, '������ ������'); // More Buttons
  cxSetResourceString(@dxSBAR_RESETTOOLBAR, '&�������� ���������'); // &Reset Toolbar
  cxSetResourceString(@dxSBAR_EXPAND, '���������� (Ctrl-Down)'); // Expand (Ctrl-Down)
  cxSetResourceString(@dxSBAR_DRAGTOMAKEMENUFLOAT, '����������, ����� ������� ���� ���������'); // Drag to make this menu float
  cxSetResourceString(@dxSBAR_TOOLBARNEWNAME, 'Custom'); // Custom
  cxSetResourceString(@dxSBAR_CATEGORYADD, '�������� ���������'); // Add Category
  cxSetResourceString(@dxSBAR_CATEGORYINSERT, '�������� ���������'); // Insert Category
  cxSetResourceString(@dxSBAR_CATEGORYRENAME, '������������� ���������'); // Rename Category
  cxSetResourceString(@dxSBAR_TOOLBARADD, '�������� ������ ������������'); // Add Toolbar
  cxSetResourceString(@dxSBAR_TOOLBARRENAME, '������������� ������'); // Rename Toolbar
  cxSetResourceString(@dxSBAR_CATEGORYNAME, '&��� ���������:'); // &Category name:
  cxSetResourceString(@dxSBAR_TOOLBARNAME, '&��� ������:'); // &Toolbar name:
  cxSetResourceString(@dxSBAR_CUSTOMIZINGFORM, '����� ���������...'); // Customization Form...
  cxSetResourceString(@dxSBAR_MODIFY, '... ��������'); // ... modify
  cxSetResourceString(@dxSBAR_PERSMENUSANDTOOLBARS, '��� ��������� ���� � �������'); // Personalized Menus and Toolbars
  cxSetResourceString(@dxSBAR_MENUSSHOWRECENTITEMS, '&������� �������������� ������� � ����'); // Me&nus show recently used commands first
  cxSetResourceString(@dxSBAR_SHOWFULLMENUSAFTERDELAY, '���������� �&����� ���� ������ ��������� ��������'); // Show f&ull menus after a short delay
  cxSetResourceString(@dxSBAR_RESETUSAGEDATA, '&�������� ��� ���������'); // &Reset my usage data
  cxSetResourceString(@dxSBAR_OTHEROPTIONS, '������'); // Other
  cxSetResourceString(@dxSBAR_LARGEICONS, '&������� ������'); // &Large icons
  cxSetResourceString(@dxSBAR_HINTOPT1, '���������� ��������� � �������'); // Show Tool&Tips on toolbars
  cxSetResourceString(@dxSBAR_HINTOPT2, '���������� ������������ ���������� � ����������'); // Show s&hortcut keys in ToolTips
  cxSetResourceString(@dxSBAR_MENUANIMATIONS, '&�������� � ����:'); // &Menu animations:
  cxSetResourceString(@dxSBAR_MENUANIM1, '(���)'); // (None)
  cxSetResourceString(@dxSBAR_MENUANIM2, '��������� �����'); // Random
  cxSetResourceString(@dxSBAR_MENUANIM3, '�������������'); // Unfold
  cxSetResourceString(@dxSBAR_MENUANIM4, '��������������'); // Slide
  cxSetResourceString(@dxSBAR_MENUANIM5, '��������'); // Fade
end;

end.
