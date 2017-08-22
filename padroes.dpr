program padroes;

uses
  Forms,
  uPrinc in 'uPrinc.pas' {FormPrinc},
  uOrcamento in 'Strategy\uOrcamento.pas',
  uImposto in 'Strategy\uImposto.pas',
  uCalculador in 'Strategy\uCalculador.pas',
  uDesconto in 'ChainOfResponsibility\uDesconto.pas',
  uTemplateDeImposto in 'TemplateMethod\uTemplateDeImposto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrinc, FormPrinc);
  Application.Run;
end.
