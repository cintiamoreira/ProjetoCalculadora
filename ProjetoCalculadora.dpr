program ProjetoCalculadora;

uses
  System.StartUpCopy,
  FMX.Forms,
  Calculadora in 'Calculadora.pas' {frm_calculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_calculadora, frm_calculadora);
  Application.Run;
end.
