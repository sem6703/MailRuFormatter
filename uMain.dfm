object fMain: TfMain
  Left = 0
  Top = 0
  ActiveControl = cInput
  AlphaBlend = True
  AlphaBlendValue = 230
  Caption = 'MailRuFormatter by HEX0x29A'
  ClientHeight = 445
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object cCode: TLabel
    Left = 0
    Top = 45
    Width = 527
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'Code'
    ExplicitTop = 42
    ExplicitWidth = 25
  end
  object Splitter4: TSplitter
    Left = 0
    Top = 146
    Width = 527
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 140
  end
  object Splitter1: TSplitter
    Left = 0
    Top = 216
    Width = 527
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 299
    Width = 527
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 296
  end
  object Splitter3: TSplitter
    Left = 0
    Top = 42
    Width = 527
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = 8
    ExplicitTop = 33
  end
  object cInput: TMemo
    Left = 0
    Top = 58
    Width = 527
    Height = 88
    Align = alTop
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object FormatBtn: TButton
    Left = 0
    Top = 302
    Width = 527
    Height = 25
    Align = alTop
    Caption = 'Format'
    Default = True
    TabOrder = 1
    OnClick = FormatBtnClick
    ExplicitTop = 299
  end
  object cOutput: TMemo
    Left = 0
    Top = 344
    Width = 527
    Height = 76
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
    Height = 25
    Align = alTop
    Enabled = False
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object cEnableAfterword: TCheckBox
    Left = 0
    Top = 174
    Width = 527
    Height = 17
    Align = alTop
    Caption = 'Enable afterword'
    TabOrder = 5
    OnClick = cEnableAfterwordClick
    ExplicitTop = 171
  end
  object cAfterword: TMemo
    Left = 0
    Top = 191
    Width = 527
    Height = 25
    Align = alTop
    Enabled = False
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object cComment: TCheckBox
    Left = 0
    Top = 327
    Width = 527
    Height = 17
    Align = alTop
    Caption = 'Comment'
    TabOrder = 7
    ExplicitLeft = 8
    ExplicitTop = 321
  end
  object cApplyAntiFreebie: TCheckBox
    Left = 0
    Top = 257
    Width = 527
    Height = 17
    Align = alTop
    Caption = 'AntiFreebie'
    TabOrder = 8
    OnClick = cApplyAntiFreebieClick
    ExplicitTop = 254
  end
  object cAntiFreebie: TMemo
    Left = 0
    Top = 274
    Width = 527
    Height = 25
    Align = alTop
    Enabled = False
    ScrollBars = ssVertical
    TabOrder = 9
    ExplicitTop = 271
  end
  object cApplyAntiAntiSpam: TCheckBox
    Left = 0
    Top = 219
    Width = 527
    Height = 17
    Align = alTop
    Caption = 'AntiAntiSpam'
    Checked = True
    State = cbChecked
    TabOrder = 10
    OnClick = cApplyAntiAntiSpamClick
    ExplicitTop = 216
  end
  object cAntiAntiSpam: TComboBox
    Left = 0
    Top = 236
    Width = 527
    Height = 21
    Align = alTop
    ItemIndex = 0
    TabOrder = 11
    Text = 'http://anonymz.com/?'
    Items.Strings = (
      'http://anonymz.com/?'
      'https://vk.com/away.php?utf=1&to=')
    ExplicitTop = 233
  end
  object CopyBtn: TButton
    Left = 0
    Top = 420
    Width = 527
    Height = 25
    Align = alBottom
    Caption = 'Copy'
    TabOrder = 12
    OnClick = CopyBtnClick
  end
  object PasteBtn: TButton
    Left = 0
    Top = 149
    Width = 527
    Height = 25
    Align = alTop
    Caption = 'Paste'
    TabOrder = 13
    OnClick = PasteBtnClick
    ExplicitTop = 143
  end
end
