unit uPrinc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, uOrcamento, uImposto, uCalculador, uTemplateDeImposto;

type
  TFormPrinc = class(TForm)
    mmOrca: TMemo;
    btnStrategy: TButton;
    btnChainofResponsibility: TButton;
    btnTemplateMethod: TButton;
    procedure btnStrategyClick(Sender: TObject);
    procedure btnChainofResponsibilityClick(Sender: TObject);
    procedure btnTemplateMethodClick(Sender: TObject);
  private
    procedure StrategyExemplo01;
    procedure ChainofResponsibilityExemplo01;
    procedure TemplateMethodExemplo01;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrinc: TFormPrinc;

implementation

{$R *.dfm}

procedure TFormPrinc.btnStrategyClick(Sender: TObject);
begin
  StrategyExemplo01;
end;

procedure TFormPrinc.StrategyExemplo01;
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


    mmOrca.Lines.Add('Inicio do C�lculo!');

    // Calculando o ICMS
    nValorImp := oCalculador.realizaCalculo(oOrcamento, oIcms);
    mmOrca.Lines.Add('ICMS: '+FloatToStr(nValorImp));

    // Calculando o ISS
    nValorImp := oCalculador.realizaCalculo(oOrcamento, oIss);
    mmOrca.Lines.Add('ISS: '+FloatToStr(nValorImp));
  
    mmOrca.Lines.Add('Fim do C�lculo!');
  finally
    oOrcamento.Free;
    oCalculador.Free;
  end;
end;

procedure TFormPrinc.btnChainofResponsibilityClick(Sender: TObject);
begin
  ChainofResponsibilityExemplo01;
end;

procedure TFormPrinc.ChainofResponsibilityExemplo01;
var
  oOrcamento: TOrcamento;
  oCalculador: TCalculador;
  nValorDesc: Extended;
begin
  try
    oCalculador := TCalculador.Create();
    oOrcamento := TOrcamento.Create(600);
    oOrcamento.AddItem(TItem.Create('Item 01', 300));
    oOrcamento.AddItem(TItem.Create('Item 02', 200));
    oOrcamento.AddItem(TItem.Create('Item 03', 100));

    nValorDesc := oCalculador.CalcularDesconto(oOrcamento);

    mmOrca.Lines.Add('Inicio do C�lculo!');
    mmOrca.Lines.Add('Valor do Desconto: '+FloatToStr(nValorDesc));
    mmOrca.Lines.Add('Fim do C�lculo!');
  finally
    oOrcamento.Free;
    oCalculador.Free;
  end;
end;

procedure TFormPrinc.btnTemplateMethodClick(Sender: TObject);
begin
  TemplateMethodExemplo01
end;

procedure TFormPrinc.TemplateMethodExemplo01;
var
  oCalculador: TCalculador;
  oIcpp: IImposto;
  oOrcamento: TOrcamento;
  nValorImp: Extended;
begin
  oIcpp := TICPP.Create;

  try
    oOrcamento := TOrcamento.Create(1000);
    oCalculador := TCalculador.Create();

    mmOrca.Lines.Add('Inicio do C�lculo!');

    // Calculando o ICPP
    nValorImp := oCalculador.realizaCalculo(oOrcamento, oIcpp);
    mmOrca.Lines.Add('ICPP: '+FloatToStr(nValorImp));
  
    mmOrca.Lines.Add('Fim do C�lculo!');
  finally
    oOrcamento.Free;
    oCalculador.Free;
  end;

end;

end.
