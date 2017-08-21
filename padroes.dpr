program padroes;

uses
  Forms,
  uPrinc in 'uPrinc.pas' {FormPrinc},
  uOrcamento in 'strategy\uOrcamento.pas',
  uImposto in 'strategy\uImposto.pas',
  uCalculador in 'strategy\uCalculador.pas',
  uDesconto in 'ChainofResponsibility\uDesconto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrinc, FormPrinc);
  Application.Run;
end.
