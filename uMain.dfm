object fMain: TfMain
  Left = 0
  Top = 0
  ActiveControl = cInput
  AlphaBlend = True
  AlphaBlendValue = 230
  Caption = 'MailRuFormatter by HEX0x29A'
  ClientHeight = 424
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object cCode: TLabel
    Left = 0
    Top = 65
    Width = 527
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'Code'
    ExplicitWidth = 25
  end
  object cInput: TMemo
    Left = 0
    Top = 78
    Width = 527
    Height = 88
    Align = alTop
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object FormatBtn: TButton
    Left = 0
    Top = 311
    Width = 527
    Height = 25
    Align = alTop
    Caption = 'Format'
    Default = True
    TabOrder = 1
    OnClick = FormatBtnClick
  end
  object cOutput: TMemo
    Left = 0
    Top = 353
    Width = 527
    Height = 46
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object cEnableForeword: TCheckBox
    Left = 0
    Top = 0
    Width = 527
    Height = 17
    Align = alTop
    Caption = 'Enable foreword'
    TabOrder = 3
    OnClick = cEnableForewordClick
  end
  object cForeword: TMemo
    Left = 0
    Top = 17
    Width = 527
    Height = 48
    Align = alTop
    Enabled = False
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object cEnableAfterword: TCheckBox
    Left = 0
    Top = 166
    Width = 527
    Height = 17
    Align = alTop
    Caption = 'Enable afterword'
    TabOrder = 5
    OnClick = cEnableAfterwordClick
  end
  object cAfterword: TMemo
    Left = 0
    Top = 183
    Width = 527
    Height = 44
    Align = alTop
    Enabled = False
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object cComment: TCheckBox
    Left = 0
    Top = 336
    Width = 527
    Height = 17
    Align = alTop
    Caption = 'Comment'
    TabOrder = 7
  end
  object cApplyAntiFreebie: TCheckBox
    Left = 0
    Top = 265
    Width = 527
    Height = 17
    Align = alTop
    Caption = 'AntiFreebie'
    TabOrder = 8
    OnClick = cApplyAntiFreebieClick
  end
  object cAntiFreebie: TMemo
    Left = 0
    Top = 282
    Width = 527
    Height = 29
    Align = alTop
    Enabled = False
    ScrollBars = ssVertical
    TabOrder = 9
  end
  object cApplyAntiAntiSpam: TCheckBox
    Left = 0
    Top = 227
    Width = 527
    Height = 17
    Align = alTop
    Caption = 'AntiAntiSpam'
    Checked = True
    State = cbChecked
    TabOrder = 10
    OnClick = cApplyAntiAntiSpamClick
  end
  object cAntiAntiSpam: TComboBox
    Left = 0
    Top = 244
    Width = 527
    Height = 21
    Align = alTop
    ItemIndex = 0
    TabOrder = 11
    Text = 'http://anonymz.com/?'
    Items.Strings = (
      'http://anonymz.com/?'
      'https://vk.com/away.php?utf=1&to=')
  end
  object CopyBtn: TButton
    Left = 0
    Top = 399
    Width = 527
    Height = 25
    Align = alBottom
    Caption = 'Copy'
    TabOrder = 12
    OnClick = CopyBtnClick
  end
end
