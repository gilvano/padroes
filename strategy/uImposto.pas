unit uImposto;

interface

uses uOrcamento;

type
  IImposto = interface
  ['{032552DF-F814-4F0D-8AC8-0DB508258CC1}']
    function calcular(AoOrcamento: TOrcamento): Extended;
  end;

  TICMS = class(TInterfacedObject, IImposto)
  public
    function calcular(AoOrcamento: TOrcamento): Extended;
  end;

  TISS = class(TInterfacedObject, IImposto)
  public
    function calcular(AoOrcamento: TOrcamento): Extended;
  end;



implementation

{ TICMS }

function TICMS.calcular(AoOrcamento: TOrcamento): Extended;
begin
  // Aliquota de ICMS 10%
  result := AoOrcamento.Valor * 0.1;
end;

{ TISS }

function TISS.calcular(AoOrcamento: TOrcamento): Extended;
begin
  // Aliquota de ISS 06%
  result := AoOrcamento.Valor * 0.06;
end;

end.


 