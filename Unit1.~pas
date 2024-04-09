unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmMultiplos = class(TForm)
    gbMultiplos: TGroupBox;
    edtUltimoTermo: TEdit;
    edtPrimeiroTermo: TEdit;
    edtMultiplo: TEdit;
    lbPrimeiro: TLabel;
    lbUltimo: TLabel;
    lbMultiplo: TLabel;
    btnGerarMultiplos: TButton;
    mmoMultiplos: TMemo;
    gbCompararMultiplos: TGroupBox;
    btnCompararMultiplos: TButton;
    btnCarregarMultiplos: TButton;
    edtPrimeiroMultiplo: TEdit;
    edtSegundoMultiplo: TEdit;
    lbPrimeiroMultiplo: TLabel;
    lbSegundoMultiplo: TLabel;
    mmoNumerosIguais: TMemo;
    procedure btnGerarMultiplosClick(Sender: TObject);
    procedure btnCarregarMultiplosClick(Sender: TObject);
    procedure btnCompararMultiplosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtPrimeiroTermoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Lista1 : TStringList;
    Lista2 : TStringList;
  public
    { Public declarations }
  end;

var
  frmMultiplos: TfrmMultiplos;

implementation

{$R *.dfm}

procedure TfrmMultiplos.btnGerarMultiplosClick(Sender: TObject);
var
  ultimo, primeiro, multiplo, i, x : Integer;
begin
  if StrToIntDef(edtPrimeiroTermo.Text, -1) =  -1 then
  begin
    ShowMessage('Informe o primeiro número antes de continuar!');
    Exit;
  end;

  if StrToIntDef(edtUltimoTermo.Text, -1) =  -1 then
  begin
    ShowMessage('Informe o último número antes de continuar!');
    Exit;
  end;

  if StrToIntDef(edtMultiplo.Text, -1) =  -1 then
  begin
    ShowMessage('Informe o múltiplo número antes de continuar!');
    Exit;
  end;

  mmoMultiplos.Clear;
  primeiro := StrToInt(edtPrimeiroTermo.Text);
  ultimo := StrToInt(edtUltimoTermo.Text);
  multiplo := StrToInt(edtMultiplo.Text);

  i := primeiro;

  while (i <= ultimo) do
  begin
    if (i mod multiplo) = 0 then
    begin
      mmoMultiplos.Lines.Add(IntToStr(i));
      Inc(x);
    end;
    Inc(i);
  end;

  ShowMessage('Entre o número ' + edtPrimeiroTermo.Text + ' e o número ' +
              edtUltimoTermo.text + ' existem ' + IntToStr(x) + ' múltiplos de ' + edtMultiplo.Text);
end;

procedure TfrmMultiplos.btnCarregarMultiplosClick(Sender: TObject);
var
  i : Integer;
begin
  if mmoMultiplos.Lines.Count <= 0 then
  begin
    ShowMessage('Calcule os múltiplos antes de carregar os dados na lista');
    Exit;
  end;

  if Lista1.Count <= 0 then
  begin
    for i := 0 to mmoMultiplos.Lines.Count - 1 do
      Lista1.Add(mmoMultiplos.Lines[i]);

    edtPrimeiroMultiplo.Text := edtPrimeiroTermo.Text + ' e ' + edtUltimoTermo.Text +
                                ' múltiplos de ' + edtMultiplo.Text;
  end
  else
  if Lista2.Count <= 0 then
  begin
    for i := 0 to mmoMultiplos.Lines.Count - 1 do
      Lista2.Add(mmoMultiplos.Lines[i]);

    edtSegundoMultiplo.Text := edtPrimeiroTermo.Text + ' e ' + edtUltimoTermo.Text +
                                ' múltiplos de ' + edtMultiplo.Text;
  end;
end;

procedure TfrmMultiplos.btnCompararMultiplosClick(Sender: TObject);
var
  i, j : Integer;
begin
  if (Lista1.Count <= 0) or (Lista2.Count <= 0) then
  begin
    ShowMessage('Carregue os números nas listas antes de continuar');
    Exit;
  end;

  mmoNumerosIguais.Clear;
  for i := 0 to Lista2.Count - 1 do
  begin
    for j := 0 to Lista1.Count - 1 do
    begin
      if Lista1[j] = Lista2[i] then
      begin
        mmoNumerosIguais.Lines.Add(Lista1[j]);
      end;
    end;
  end;
  ShowMessage('Entre os números: ' + edtPrimeiroMultiplo.Text + ' e ' + edtSegundoMultiplo.Text +
              ' existem '  + IntToStr(mmoNumerosIguais.Lines.Count) + ' números iguais.');
end;

procedure TfrmMultiplos.FormCreate(Sender: TObject);
begin
  Lista1 := TStringList.Create;
  Lista2 := TStringList.Create;
  Lista1.Clear;
  Lista2.Clear;
end;

procedure TfrmMultiplos.edtPrimeiroTermoKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9', #8]) then
    Key := #0;
end;

end.
