unit uCalculador;

interface

uses uOrcamento, uImposto, uDesconto;

type
  TCalculador = class
  public
    function RealizaCalculo(AoOrcamento: TOrcamento; AoImposto: IImposto): Extended;
    function CalcularDesconto(AoOrcamento: TOrcamento): Extended;
  end;

implementation

{ TCalculador }

function TCalculador.RealizaCalculo(AoOrcamento: TOrcamento;
  AoImposto: IImposto): Extended;
begin
  result := AoImposto.calcular(AoOrcamento);  
end;

function TCalculador.CalcularDesconto(AoOrcamento: TOrcamento): Extended;
var
  d1: IDesconto;
  d2: IDesconto;
  d3: IDesconto;
begin
  d1 := TDescontoPorMaisDeCincoItens.Create;
  d2 := TDescontoPorMaisDeQuinhentosReais.Create;
  d3 := TSemDesconto.Create;

  // Seta o próximo desconto, para no caso de não se encaixar na regra
  // do primeiro desconto, dai passa para o próximo
  d1.ProximoDesconto := d2;
  d2.ProximoDesconto := d3;

  Result := d1.Desconta(AoOrcamento);
end;

end.


