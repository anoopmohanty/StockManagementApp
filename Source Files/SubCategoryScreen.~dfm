object frmSubCategoryAddScreen: TfrmSubCategoryAddScreen
  Left = 309
  Top = 266
  Width = 855
  Height = 349
  BorderIcons = [biSystemMenu]
  Caption = 'Add New Sub-Category'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object gbAddnewSubCt: TGroupBox
    Left = 24
    Top = 32
    Width = 361
    Height = 249
    Caption = 'Add New Details'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lblEnterSubCatName: TLabel
      Left = 16
      Top = 76
      Width = 123
      Height = 13
      Caption = 'Enter Sub-Category Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblEnterSubCatDesc: TLabel
      Left = 16
      Top = 124
      Width = 148
      Height = 13
      Caption = 'Enter Sub-Category Description'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblSelProdCat: TLabel
      Left = 16
      Top = 28
      Width = 115
      Height = 13
      Caption = 'Select Product Category'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtSubCatName: TEdit
      Left = 176
      Top = 68
      Width = 169
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtSubCatDesc: TEdit
      Left = 176
      Top = 116
      Width = 169
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btnSubCatSave: TButton
      Left = 264
      Top = 184
      Width = 83
      Height = 25
      Caption = 'Save '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnSubCatSaveClick
    end
    object DBCmbProdCat: TDBLookupComboBox
      Left = 176
      Top = 24
      Width = 169
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CategoryName'
      ListField = 'CategoryName'
      ListSource = dmInvManagerDb.DscProductCat
      ParentFont = False
      TabOrder = 3
    end
  end
  object gbSearchExistingSubCat: TGroupBox
    Left = 408
    Top = 32
    Width = 409
    Height = 249
    Caption = 'Search Existing Product Sub-Categories'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object edtSearchSubCat: TEdit
      Left = 16
      Top = 32
      Width = 209
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Search by Sub-Category Name'
      OnChange = edtSearchSubCatChange
      OnClick = edtSearchSubCatClick
      OnKeyPress = edtSearchSubCatKeyPress
    end
    object btnSubCatSearch: TButton
      Left = 256
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnSubCatSearchClick
    end
    object DBGridSubCat: TDBGrid
      Left = 16
      Top = 80
      Width = 385
      Height = 153
      DataSource = dmInvManagerDb.DscProductSubCat
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SubCategoryID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Sub- Category ID'
          Width = 110
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SubCategoryName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Sub-Category Name'
          Width = 180
          Visible = True
        end>
    end
  end
end
