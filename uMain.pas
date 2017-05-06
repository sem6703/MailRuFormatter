unit uMain;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, System.RegularExpressions;

type
  TfMain = class(TForm)
    cInput: TMemo;
    FormatBtn: TButton;
    cOutput: TMemo;
    cEnableForeword: TCheckBox;
    cForeword: TMemo;
    cEnableAfterword: TCheckBox;
    cAfterword: TMemo;
    cCode: TLabel;
    cComment: TCheckBox;
    cApplyAntiFreebie: TCheckBox;
    cAntiFreebie: TMemo;
    cApplyAntiAntiSpam: TCheckBox;
    cAntiAntiSpam: TComboBox;
    CopyBtn: TButton;
    procedure FormatBtnClick(Sender: TObject);
    procedure cEnableForewordClick(Sender: TObject);
    procedure cEnableAfterwordClick(Sender: TObject);
    procedure cApplyAntiFreebieClick(Sender: TObject);
    procedure cApplyAntiAntiSpamClick(Sender: TObject);
    procedure CopyBtnClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    function FormatCode(Text: string; Space: string; AntiFreebie: Boolean;
      AntiAntiSpam: Boolean; AntiAntiSpamUrl: string): string;
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

uses
  Winapi.Windows;

function TfMain.FormatCode(Text: string; Space: string; AntiFreebie: Boolean;
  AntiAntiSpam: Boolean; AntiAntiSpamUrl: string): string;
const
  _OLD: string = 'aceopxyABCEHKMOPTXасеорхуАВСЕНКМОРТХ';
  _NEW: string = 'асеорхуАВСЕНКМОРТХaceopxyABCEHKMOPTX';
var
  i: Integer;
  mc: TMatchCollection;

  function DontReplace(n: Integer): Boolean;
  var
    i: Integer;
  begin
    Result := False;
    for i := 0 to Pred(mc.Count) do
      if (mc.Item[i].Index <= n) and (Pred(mc.Item[i].Index + mc.Item[i].Length)
        >= n) then
      begin
        Result := True;
        Exit;
      end;
  end;

begin
  Result := Text;
  mc := TRegEx.Matches(Result,
    '(https?:\/\/)([\da-z\.-]+)\.([a-z\.]{2,6})([\/\:\%\?\=\+\-\&\w\.-]*)*\/?');
  i := 1;
  while i <= Length(Result) do
  begin
    case Result[i] of
      '&':
        if (not DontReplace(i)) then
        begin
          Insert('amp;', Result, Succ(i));
          Inc(i, 5);
        end
        else
          Inc(i);
    else
      if AntiFreebie then
        if Pos(Result[i], _OLD) <> 0 then
          if (not DontReplace(i)) then
            Result[i] := _NEW[Pos(Result[i], _OLD)];
      Inc(i);
    end;
  end;
  Result := StringReplace(Result, #32#32, Space, [rfReplaceAll]);
  Result := StringReplace(Result, #09, Space, [rfReplaceAll]);
  Result := StringReplace(Result, '<', '&lt;', [rfReplaceAll]);
  Result := StringReplace(Result, '>', '&gt;', [rfReplaceAll]);
  if AntiAntiSpam then
    Result := TRegEx.Replace(Result,
      '(https?:\/\/)([\da-z\.-]+)\.([a-z\.]{2,6})([\/\:\%\?\=\+\-\&\w\.-]*)*\/?',
      '<a rel="nofollow" href="' + AntiAntiSpamUrl + '$0" target="_blank">$0</a>')
  else
    Result := TRegEx.Replace(Result,
      '(https?:\/\/)([\da-z\.-]+)\.([a-z\.]{2,6})([\/\:\%\?\=\+\-\&\w\.-]*)*\/?',
      '<a rel="nofollow" href="$0" target="_blank">$0</a>')
end;

procedure TfMain.FormPaint(Sender: TObject);
begin
  cAntiAntiSpam.SelStart := Length(cAntiAntiSpam.Text);
  cAntiAntiSpam.SelLength := 0;
end;

procedure TfMain.cApplyAntiAntiSpamClick(Sender: TObject);
begin
  cAntiAntiSpam.Enabled := cApplyAntiAntiSpam.Checked;
end;

procedure TfMain.cApplyAntiFreebieClick(Sender: TObject);
begin
  cAntiFreebie.Enabled := cApplyAntiFreebie.Checked;
end;

procedure TfMain.cEnableAfterwordClick(Sender: TObject);
begin
  cAfterword.Enabled := cEnableAfterword.Checked;
end;

procedure TfMain.cEnableForewordClick(Sender: TObject);
begin
  cForeword.Enabled := cEnableForeword.Checked;
end;

procedure TfMain.CopyBtnClick(Sender: TObject);
begin
  cOutput.SelectAll;
  cOutput.CopyToClipboard;
end;

procedure TfMain.FormatBtnClick(Sender: TObject);
var
  i: Integer;
begin
  for  i := 0 to Pred(cInput.Lines.Count) do
    cInput.Lines[i] := TrimRight(cInput.Lines[i]);
  if (cComment.Checked) and (Trim(cInput.Text) <> '') then
    cOutput.Text := FormatCode(TrimRight(cInput.Text), ' ', cApplyAntiFreebie.Checked,
      cApplyAntiAntiSpam.Checked, cAntiAntiSpam.Text)
  else
    cOutput.Text := FormatCode(TrimRight(cInput.Text), '&nbsp;&nbsp;',
      cApplyAntiFreebie.Checked, cApplyAntiAntiSpam.Checked, cAntiAntiSpam.Text);
  if (cEnableForeword.Checked) and (Trim(cForeword.Text) <> '') then
    cOutput.Text := Trim(cForeword.Text) + #13#10#13#10 + cOutput.Text;
  if (cApplyAntiFreebie.Checked) and (Trim(cAntiFreebie.Text) <> '') then
    cOutput.Text := cOutput.Text + #13#10#13#10 + Trim(cAntiFreebie.Text);
  if (cEnableAfterword.Checked) and (Trim(cAfterword.Text) <> '') then
    cOutput.Text := cOutput.Text + #13#10#13#10 + Trim(cAfterword.Text);
  cOutput.SelectAll;
end;

end.


