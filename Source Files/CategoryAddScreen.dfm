object frmCategoryAddScreen: TfrmCategoryAddScreen
  Left = 287
  Top = 240
  Width = 854
  Height = 317
  BorderIcons = [biSystemMenu]
  Caption = 'Add New Category'
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
  object gbNewCatDetails: TGroupBox
    Left = 16
    Top = 24
    Width = 349
    Height = 225
    Caption = 'Add New Details'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lblCatName: TLabel
      Left = 16
      Top = 44
      Width = 101
      Height = 13
      Caption = 'Enter Category Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblCatDesc: TLabel
      Left = 16
      Top = 108
      Width = 126
      Height = 13
      Caption = 'Enter Category Description'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtNewCatName: TEdit
      Left = 160
      Top = 36
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
    object edtNewCatDesc: TEdit
      Left = 160
      Top = 100
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
    object btnNewCatSave: TButton
      Left = 240
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
      OnClick = btnNewCatSaveClick
    end
  end
  object gbExistingCat: TGroupBox
    Left = 384
    Top = 24
    Width = 425
    Height = 225
    Caption = 'Search Existing Product Categories'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    TabStop = True
    object edtCategorySearch: TEdit
      Left = 16
      Top = 32
      Width = 241
      Height = 21
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Search by Category Name'
      OnChange = edtCategorySearchChange
      OnClick = edtCategorySearchClick
      OnKeyPress = edtCategorySearchKeyPress
    end
    object btnCatSearch: TButton
      Left = 296
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
      TabOrder = 1
      TabStop = False
      OnClick = btnCatSearchClick
    end
    object DBGridCategory: TDBGrid
      Left = 16
      Top = 80
      Width = 393
      Height = 129
      DataSource = dmInvManagerDb.DscProductCat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CategoryID'
          Title.Alignment = taCenter
          Title.Caption = 'Category ID'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CategoryName'
          Title.Alignment = taCenter
          Title.Caption = 'Category Name'
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CategoryDescription'
          Title.Alignment = taCenter
          Title.Caption = 'Category Description'
          Width = 180
          Visible = True
        end>
    end
  end
end
