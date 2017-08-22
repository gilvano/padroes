object FormPrinc: TFormPrinc
  Left = 412
  Top = 197
  Width = 691
  Height = 437
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
  object btnStrategy: TButton
    Left = 20
    Top = 16
    Width = 128
    Height = 45
    Caption = 'Strategy'
    TabOrder = 0
    OnClick = btnStrategyClick
  end
  object mmOrca: TMemo
    Left = 20
    Top = 127
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
  object btnChainofResponsibility: TButton
    Left = 162
    Top = 16
    Width = 128
    Height = 45
    Caption = 'Chain of Responsibility'
    TabOrder = 2
    OnClick = btnChainofResponsibilityClick
  end
  object btnTemplateMethod: TButton
    Left = 306
    Top = 17
    Width = 128
    Height = 45
    Caption = 'Template Method'
    TabOrder = 3
    OnClick = btnTemplateMethodClick
  end
end
