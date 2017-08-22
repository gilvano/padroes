unit uTemplateDeImposto;

interface

uses uOrcamento, uImposto;

type
  TTemplateDeImpostoCondicional = class (TInterfacedObject, IImposto)
  public
    function Calcular(AoOrcamento: TOrcamento): Extended;
    function DeveUsarMaximaTaxacao(AoOrcamento: TOrcamento): Boolean; virtual; abstract;
    function MaximaTaxacao(AoOrcamento: TOrcamento): Extended; virtual; abstract;
    function MinimaTaxacao(AoOrcamento: TOrcamento): Extended; virtual; abstract;
  end;

  TICPP= class(TTemplateDeImpostoCondicional)
  public
    function DeveUsarMaximaTaxacao(AoOrcamento: TOrcamento): Boolean; override;
    function MaximaTaxacao(AoOrcamento: TOrcamento): Extended; override;
    function MinimaTaxacao(AoOrcamento: TOrcamento): Extended; override;
  end;

implementation

{ TTemplateDeImpostoCondicional }

function TTemplateDeImpostoCondicional.Calcular(
  AoOrcamento: TOrcamento): Extended;
begin
  if (DeveUsarMaximaTaxacao(AoOrcamento)) then
    Result := MaximaTaxacao(AoOrcamento)
  else
    Result := MaximaTaxacao(AoOrcamento);
end;

{ TICPP }

function TICPP.DeveUsarMaximaTaxacao(AoOrcamento: TOrcamento): Boolean;
begin
  Result := (AoOrcamento.Valor > 500);
end;

function TICPP.MaximaTaxacao(AoOrcamento: TOrcamento): Extended;
begin
  Result := AoOrcamento.Valor * 0.07;
end;

function TICPP.MinimaTaxacao(AoOrcamento: TOrcamento): Extended;
begin
  Result := AoOrcamento.Valor * 0.05;
end;

end.
