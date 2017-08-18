object FormPrinc: TFormPrinc
  Left = 412
  Top = 197
  Width = 1050
  Height = 614
  Caption = 'FormPrinc'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 1034
    Height = 576
    Align = alClient
    TabOrder = 0
    Tabs.Strings = (
      'Strategy')
    TabIndex = 0
    object btnOrcamento: TButton
      Left = 53
      Top = 69
      Width = 75
      Height = 25
      Caption = 'Or'#231'amento'
      TabOrder = 0
      OnClick = btnOrcamentoClick
    end
    object mmOrca: TMemo
      Left = 40
      Top = 122
      Width = 588
      Height = 236
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Ctl3D = False
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 1
    end
  end
end
