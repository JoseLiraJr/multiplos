program multiplo;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmMultiplos};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMultiplos, frmMultiplos);
  Application.Run;
end.
