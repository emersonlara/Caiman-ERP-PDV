inherited FrmCadClassifContasReceber: TFrmCadClassifContasReceber
  Left = 433
  Top = 369
  Caption = 'Cadastro de Classifica'#231#227'o de Contas a Receber'
  ClientHeight = 171
  ClientWidth = 462
  OldCreateOrder = True
  OnShow = FormShow
  ExplicitWidth = 468
  ExplicitHeight = 200
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 462
    Height = 94
    ExplicitWidth = 462
    ExplicitHeight = 94
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 38
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 49
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object codigo: TEdit
      Left = 8
      Top = 24
      Width = 57
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtNome: TEdit
      Left = 8
      Top = 64
      Width = 441
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      MaxLength = 60
      TabOrder = 1
    end
  end
  inherited Panel2: TPanel
    Width = 462
    ExplicitWidth = 462
    inherited ToolBar1: TToolBar
      Width = 462
      ExplicitWidth = 462
      inherited BtnAlterar: TToolButton
        OnClick = BtnAlterarClick
      end
      inherited BtnConsultar: TToolButton
        OnClick = BtnConsultarClick
      end
    end
  end
  inherited SB: TdxStatusBar
    Top = 151
    Width = 462
    ExplicitTop = 151
    ExplicitWidth = 462
  end
  inherited BarraMenu: TcxImageList
    FormatVersion = 1
  end
  object IBSQLCla: TFDQuery
    Connection = DM.IBDatabase
    Transaction = IBTRCla
    Left = 184
    Top = 56
  end
  object IBTRCla: TFDTransaction
    Connection = DM.IBDatabase
    Left = 272
    Top = 56
  end
end
