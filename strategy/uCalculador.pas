unit uCalculador;

interface

uses uOrcamento, uImposto;

type
  TCalculador = class
  public
    function realizaCalculo(AoOrcamento: TOrcamento; AoImposto: IImposto): Extended;
  end;

implementation

{ TCalculador }

function TCalculador.realizaCalculo(AoOrcamento: TOrcamento;
  AoImposto: IImposto): Extended;
begin
  result := AoImposto.calcular(AoOrcamento);  
end;

end.


