unit uOrcamento;

interface

uses Classes;

type
  TItem = class
  private
    FNome: String;
    FValor: Extended;
  public
    constructor create(AcNome: String; AnValor: Extended);
    property Nome : String read FNome write FNome;
    property Valor : Extended read FValor write FValor;
  end;

  TOrcamento = class
  private
    FValor: Extended;
  public
    Itens: TList;
    constructor Create(AnValor: Extended);
    procedure AddItem(AoItem: TItem);
    property Valor: Extended read FValor write FValor;
  end;

implementation

{ TOrcamento }

procedure TOrcamento.AddItem(AoItem: TItem);
begin
  if (Itens = nil) then
    Itens := TList.Create;

  Itens.Add(AoItem);
end;

constructor TOrcamento.Create(AnValor: Extended);
begin
  self.FValor := AnValor;
  //Itens := TItem.Create('', 0);
end;


{ TItem }

constructor TItem.create(AcNome: String; AnValor: Extended);
begin
  self.FNome  := AcNome;
  self.FValor := AnValor;
end;

end.
