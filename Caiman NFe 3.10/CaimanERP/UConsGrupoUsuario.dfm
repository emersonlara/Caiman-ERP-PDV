inherited FrmConsGrupoUsuario: TFrmConsGrupoUsuario
  Left = 360
  Top = 175
  Caption = 'Consulta de Grupo de Usu'#225'rios'
  OldCreateOrder = True
  OnClose = FormClose
  ExplicitWidth = 457
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited BtnOK: TBitBtn
      OnClick = BtnOkClick
    end
  end
  inherited Panel2: TPanel
    inherited DBGrid: TDBGrid
      DataSource = DSQConsGrupoUsuario
      OnDblClick = BtnLocalizarClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_GRUPO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#211'D.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_GRUPO'
          Title.Alignment = taCenter
          Title.Caption = 'DESCRI'#199#195'O'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUPER_GRUPO'
          Title.Alignment = taCenter
          Title.Caption = 'SUPER'
          Width = 60
          Visible = True
        end>
    end
    inherited BtnLocalizar: TBitBtn
      OnClick = BtnLocalizarClick
    end
  end
  object QConsGrupoUsuario: TFDQuery
    Connection = DM.IBDatabase
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'SELECT *'
      'FROM GRUPO_USUARIO')
    Left = 176
    Top = 104
    object QConsGrupoUsuarioCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Origin = 'GRUPO_USUARIO.COD_GRUPO'
      Required = True
    end
    object QConsGrupoUsuarioNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Origin = 'GRUPO_USUARIO.NOME_GRUPO'
      Required = True
      Size = 50
    end
    object QConsGrupoUsuarioSUPER_GRUPO: TStringField
      FieldName = 'SUPER_GRUPO'
      Origin = 'GRUPO_USUARIO.SUPER_GRUPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSQConsGrupoUsuario: TDataSource
    AutoEdit = False
    DataSet = QConsGrupoUsuario
    Left = 176
    Top = 168
  end
end
