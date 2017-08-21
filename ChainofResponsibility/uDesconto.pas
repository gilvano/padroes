unit uDesconto;

interface

uses uOrcamento;

type

  IDesconto = interface; //forward

  IDesconto = interface
  ['{417564C7-7B51-468D-A48A-594D3DDD9CCA}']
    function Desconta(AoOrcamento: TOrcamento): Extended;
    function GetProximoDesconto: IDesconto;
    procedure SetProximoDesconto(const Value: IDesconto);
    property ProximoDesconto : IDesconto read GetProximoDesconto write SetProximoDesconto;
  end;

  TDescontoPorMaisDeCincoItens = class(TInterfacedObject, IDesconto)
  private
    FProximoDesconto: IDesconto;
    function GetProximoDesconto: IDesconto;
    procedure SetProximoDesconto(const Value: IDesconto);
  public
    function Desconta(AoOrcamento: TOrcamento): Extended;
    property ProximoDesconto : IDesconto read GetProximoDesconto write SetProximoDesconto;
  end;

  TDescontoPorMaisDeQuinhentosReais = class(TInterfacedObject, IDesconto)
  private
    FProximoDesconto: IDesconto;
    function GetProximoDesconto: IDesconto;
    procedure SetProximoDesconto(const Value: IDesconto);
  public
    property ProximoDesconto : IDesconto read GetProximoDesconto write SetProximoDesconto;
    function Desconta(AoOrcamento: TOrcamento): Extended;
  end;

  TSemDesconto = class(TInterfacedObject, IDesconto)
  private
    FProximoDesconto: IDesconto;
    function GetProximoDesconto: IDesconto;
    procedure SetProximoDesconto(const Value: IDesconto);
  public
    property ProximoDesconto : IDesconto read GetProximoDesconto write SetProximoDesconto;
    function Desconta(AoOrcamento: TOrcamento): Extended;
  end;



implementation

{ TDescontoPorMaisDeCincoItens }

function TDescontoPorMaisDeCincoItens.Desconta(
  AoOrcamento: TOrcamento): Extended;
begin
  if(AoOrcamento.Itens.Count > 5)then
    result := AoOrcamento.Valor * 0.1
  else
    result := FProximoDesconto.Desconta(AoOrcamento);
end;

function TDescontoPorMaisDeCincoItens.GetProximoDesconto: IDesconto;
begin
  Result := FProximoDesconto;
end;

procedure TDescontoPorMaisDeCincoItens.SetProximoDesconto(
  const Value: IDesconto);
begin
  FProximoDesconto := Value;
end;

{ TDescontoPorMaisDeQuinhentosReais }

function TDescontoPorMaisDeQuinhentosReais.Desconta(
  AoOrcamento: TOrcamento): Extended;
begin
  if(AoOrcamento.Valor > 500)then
    result := AoOrcamento.Valor * 0.07
  else
    result := FProximoDesconto.Desconta(AoOrcamento);
end;

function TDescontoPorMaisDeQuinhentosReais.GetProximoDesconto: IDesconto;
begin
  Result := FProximoDesconto;  
end;

procedure TDescontoPorMaisDeQuinhentosReais.SetProximoDesconto(
  const Value: IDesconto);
begin
  FProximoDesconto := Value;
end;

{ TSemDesconto }

procedure TSemDesconto.SetProximoDesconto(const Value: IDesconto);
begin
  // Não tem próximo
end;

function TSemDesconto.Desconta(AoOrcamento: TOrcamento): Extended;
begin
  result := 0;
end; 

function TSemDesconto.GetProximoDesconto: IDesconto;
begin
  Result := FProximoDesconto;  
end;

end.

 