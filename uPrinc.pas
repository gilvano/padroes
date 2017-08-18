unit uPrinc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, uOrcamento, uImposto, uCalculador;

type
  TFormPrinc = class(TForm)
    TabControl1: TTabControl;
    btnOrcamento: TButton;
    mmOrca: TMemo;
    procedure btnOrcamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrinc: TFormPrinc;

implementation

{$R *.dfm}

procedure TFormPrinc.btnOrcamentoClick(Sender: TObject);
var
  oCalculador: TCalculador;
  oIcms: IImposto;
  oIss: IImposto;
  oOrcamento: TOrcamento;
  nValorImp: Extended;
begin
  oIcms := TICMS.Create;
  oIss := TISS.Create;

  try
    oOrcamento := TOrcamento.Create(500);
    oCalculador := TCalculador.Create();


    mmOrca.Lines.Add('Inicio do Cálculo!');

    // Calculando o ICMS
    nValorImp := oCalculador.realizaCalculo(oOrcamento, oIcms);
    mmOrca.Lines.Add('ICMS: '+FloatToStr(nValorImp));

    // Calculando o ISS
    nValorImp := oCalculador.realizaCalculo(oOrcamento, oIss);
    mmOrca.Lines.Add('ISS: '+FloatToStr(nValorImp));
  
    mmOrca.Lines.Add('Fim do Cálculo!');
  finally
    oOrcamento.Free;
    oCalculador.Free;
  end;
end;

end.
