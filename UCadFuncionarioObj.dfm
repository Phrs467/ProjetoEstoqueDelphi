object FormCadFuncionarioObj: TFormCadFuncionarioObj
  Left = 0
  Top = 0
  Caption = 'Cadastro de Funcion'#225'rio OBJ'
  ClientHeight = 584
  ClientWidth = 816
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object LblCadIdFuncObj: TLabel
    Left = 32
    Top = 152
    Width = 14
    Height = 14
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblCadNomeFuncObj: TLabel
    Left = 32
    Top = 213
    Width = 38
    Height = 14
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblCadSenhaFuncObj: TLabel
    Left = 32
    Top = 277
    Width = 42
    Height = 14
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblCadDepFuncObj: TLabel
    Left = 32
    Top = 333
    Width = 89
    Height = 14
    Caption = 'Departamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GerarNumPedido: TSpeedButton
    Left = 268
    Top = 296
    Width = 23
    Height = 22
    Hint = 'Gerar n'#250'mero do pedido'
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000390000
      006C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000006C0000
      00FE000000710000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0070000000FF0000007800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000070000000FF00000078000000000000000000000000000000000000
      000000000000000000000000001E000000000000000000000000000000000000
      00000000000000000070000000FF000000780000000000000000000000000000
      00000000000300000056000000AC0000000D0000000000000000000000000000
      0000000000000000000000000070000000FF0000007800000000000000000000
      00000000001300000094000000D2000000380000000000000000000000000000
      000000000000000000000000000000000070000000FF00000078000000000000
      000000000000000000030000003A000000000000000000000000000000000000
      00000000003C00000000000000000000000000000071000000FE000000710000
      0000000000000000000200000000000000000000000000000000000000000000
      005C000000EB0000006500000000000000000000000000000071000000FE0000
      00710000003D000000EF00000028000000000000000000000000000000000000
      0024000000CA0000002900000000000000000000000000000000000000710000
      00FE000000D9000000FF000000CD0000003B000000430000000E000000000000
      00000000001E0000000000000000000000000000000000000000000000390000
      00D6000000FF000000FF000000FF000000FF000000FF0000007C000000000000
      0000000000000000000000000000000000000000000000000006000000F40000
      00FF000000FF000000FF000000FF000000FF000000DE00000010000000000000
      0000000000000000000000000000000000000000000100000000000000310000
      00D5000000FF000000FF000000FF000000FF0000006F00000000000000000000
      000000000000000000000000000000000000000000880000000B000000000000
      0043000000FF000000FF000000FF000000FF000000B700000000000000000000
      00000000000000000000000000000000005A000000FA000000AE0000000A0000
      0045000000FF000000DE00000075000000C0000000CD00000000000000000000
      0000000000000000000000000000000000000000007800000007000000000000
      0014000000830000001000000000000000000000000000000000}
    ParentShowHint = False
    ShowHint = True
    OnClick = GerarNumPedidoClick
  end
  object PanelCadFuncObj: TPanel
    Left = 0
    Top = 0
    Width = 816
    Height = 113
    Align = alTop
    Caption = 'Cadastro de Funcion'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 152
  end
  object EdtCadIdFuncObj: TEdit
    Left = 32
    Top = 171
    Width = 57
    Height = 21
    TabOrder = 1
    OnKeyDown = EdtCadIdFuncObjKeyDown
  end
  object EdtCadNomeFuncObj: TEdit
    Left = 32
    Top = 233
    Width = 259
    Height = 21
    TabOrder = 2
  end
  object EdtCadSenhaFuncObj: TEdit
    Left = 32
    Top = 296
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
  object EdtCadIdDepFuncObj: TEdit
    Left = 32
    Top = 352
    Width = 57
    Height = 21
    TabOrder = 4
  end
  object BtPesqCadFuncObj: TButton
    Left = 95
    Top = 350
    Width = 34
    Height = 25
    TabOrder = 5
    OnClick = BtPesqCadFuncObjClick
  end
  object EdtCadNomeDepFuncObj: TEdit
    Left = 135
    Top = 352
    Width = 338
    Height = 21
    TabOrder = 6
  end
  object BtSalvarCadFunc: TButton
    Left = 113
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 7
    OnClick = BtSalvarCadFuncClick
  end
  object BtNovoCadFunc: TButton
    Left = 32
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 8
    OnClick = BtNovoCadFuncClick
  end
  object ButtonPesqFunc: TButton
    Left = 95
    Top = 169
    Width = 34
    Height = 25
    TabOrder = 9
    OnClick = ButtonPesqFuncClick
  end
  object BtExcluirCadFunc: TButton
    Left = 194
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 10
    OnClick = BtExcluirCadFuncClick
  end
  object edt_matricula: TLabeledEdit
    Left = 159
    Top = 296
    Width = 103
    Height = 21
    EditLabel.Width = 56
    EditLabel.Height = 14
    EditLabel.Caption = 'Matr'#237'cula'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -12
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 11
  end
  object CheckBoxAtivo: TCheckBox
    Left = 135
    Top = 173
    Width = 97
    Height = 17
    Caption = 'Ativo'
    Checked = True
    State = cbChecked
    TabOrder = 12
  end
  object DsCadFuncObj: TDataSource
    DataSet = DmFuncionario.qFuncObj
    Left = 664
    Top = 256
  end
end
