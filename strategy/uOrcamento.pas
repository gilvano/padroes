unit uOrcamento;

interface

type
  TOrcamento = class
  private
    FValor: Extended;

  public
    constructor Create(AnValor: Extended);
    property Valor: Extended read FValor write FValor;
  end;

implementation

{ TOrcamento }

constructor TOrcamento.Create(AnValor: Extended);
begin
  self.FValor := AnValor;
end;

end.
