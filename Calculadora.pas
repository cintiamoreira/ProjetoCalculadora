unit Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Math.Vectors, FMX.Layouts,
  FMX.Controls3D, FMX.Layers3D, FMX.Edit;

type
  Tfrm_calculadora = class(TForm)
    btn_igual: TButton;
    btn_ponto: TButton;
    btn_3: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_diminuir: TButton;
    btn_somar: TButton;
    btn_6: TButton;
    btn_0: TButton;
    btn_dividir: TButton;
    btn_multiplicar: TButton;
    btn_5: TButton;
    btn_4: TButton;
    btn_9: TButton;
    btn_8: TButton;
    btn_7: TButton;
    caixa_botoes: TLayout;
    Z: TLayout;
    lb_operador: TLabel;
    lb_valor1: TLabel;
    lb_valor2: TLabel;
    btn_limpar: TButton;
    btn_deletar: TButton;
    btn_c: TButton;
    procedure btn_diminuirClick(Sender: TObject);
    procedure btn_somarClick(Sender: TObject);
    procedure btn_multiplicarClick(Sender: TObject);
    procedure btn_dividirClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_pontoClick(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure btn_cClick(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_calculadora: Tfrm_calculadora;

implementation

{$R *.fmx}

procedure Tfrm_calculadora.btn_0Click(Sender: TObject);
begin
   if lb_operador.Text = '.' then
  begin
    lb_valor1.Text := lb_valor1.Text + '0';
  end
  else
  begin
    lb_valor2.Text := lb_valor2.Text + '0';
  end;
end;

procedure Tfrm_calculadora.btn_1Click(Sender: TObject);
begin

if lb_operador.Text = '.' then
  begin
    lb_valor1.Text := lb_valor1.Text + '1';
  end
  else
  begin
    lb_valor2.Text := lb_valor2.Text + '1';
  end;

end;

procedure Tfrm_calculadora.btn_2Click(Sender: TObject);
begin

if lb_operador.Text = '.' then
  begin
    lb_valor1.Text := lb_valor1.Text + '2';
  end
  else
  begin
    lb_valor2.Text := lb_valor2.Text + '2';
  end;
end;

procedure Tfrm_calculadora.btn_3Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_valor1.Text := lb_valor1.Text + '3';
  end
  else
  begin
    lb_valor2.Text := lb_valor2.Text + '3';
  end;
end;

procedure Tfrm_calculadora.btn_4Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_valor1.Text := lb_valor1.Text + '4';
  end
  else
  begin
    lb_valor2.Text := lb_valor2.Text + '4';
  end;
end;

procedure Tfrm_calculadora.btn_5Click(Sender: TObject);
begin
if lb_operador.Text = '.' then
  begin
    lb_valor1.Text := lb_valor1.Text + '5';
  end
  else
  begin
    lb_valor2.Text := lb_valor2.Text + '5';
  end;
end;

procedure Tfrm_calculadora.btn_6Click(Sender: TObject);
begin
 if lb_operador.Text = '.' then
  begin
    lb_valor1.Text := lb_valor1.Text + '6';
  end
  else
  begin
    lb_valor2.Text := lb_valor2.Text + '6';
  end;
end;

procedure Tfrm_calculadora.btn_7Click(Sender: TObject);
begin
 if lb_operador.Text = '.' then
  begin
    lb_valor1.Text := lb_valor1.Text + '7';
  end
  else
  begin
    lb_valor2.Text := lb_valor2.Text + '7';
  end;
end;

procedure Tfrm_calculadora.btn_8Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_valor1.Text := lb_valor1.Text + '8';
  end
  else
  begin
    lb_valor2.Text := lb_valor2.Text + '8';
  end;
end;

procedure Tfrm_calculadora.btn_9Click(Sender: TObject);
begin
   if lb_operador.Text = '.' then
  begin
    lb_valor1.Text := lb_valor1.Text + '9';
  end
  else
  begin
    lb_valor2.Text := lb_valor2.Text + '9';
  end;
end;

procedure Tfrm_calculadora.btn_cClick(Sender: TObject);
begin
    if lb_operador.Text = '.' then
    begin
        lb_valor1.Text := '';
    end
    else
    begin
        lb_valor2.Text := '';
    end;

end;

procedure Tfrm_calculadora.btn_deletarClick(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_valor1.Text := copy (lb_valor1.Text, 0, Length (lb_valor1.Text) -1)
  end
  else
  begin
    lb_valor2.Text := copy (lb_valor2.Text, 0, Length (lb_valor2.Text) -1)
  end;
end;

procedure Tfrm_calculadora.btn_diminuirClick(Sender: TObject);
  begin
     lb_operador.Text := '-';
     btn_somar.Enabled := true;
     btn_diminuir.Enabled := false;
     btn_multiplicar.Enabled := true;
     btn_dividir.Enabled := true;
  end;

procedure Tfrm_calculadora.btn_dividirClick(Sender: TObject);
  begin
     lb_operador.Text := '/';
     btn_somar.Enabled := true;
     btn_diminuir.Enabled := true;
     btn_multiplicar.Enabled := true;
     btn_dividir.Enabled := false;
  end;

procedure Tfrm_calculadora.btn_igualClick(Sender: TObject);
  var valor1, valor2 : double;

  begin
    valor1 := StrToFloat (lb_valor1.Text);
    valor2 := StrToFloat (lb_valor2.Text);


    //efetuando a soma
    if lb_operador.Text = '+' then
    begin
        ShowMessage (FloatToStr (valor1 + valor2));
    end;

    //efetuando a subtração
    if lb_operador.Text = '-' then
    begin
        ShowMessage (FloatToStr (valor1 - valor2));
    end;

    //efetuando a multiplicação
    if lb_operador.Text = '*' then
    begin
        ShowMessage (FloatToStr (valor1 * valor2));
    end;

    //efetuando a divisão
    if lb_operador.Text = '/' then
    begin
        ShowMessage (FloatToStr (valor1 / valor2));
    end;

    lb_operador.Text := '.';
    lb_valor1.Text := '';
    lb_valor2.Text := '';

   btn_somar.Enabled := true;
   btn_diminuir.Enabled := true;
   btn_multiplicar.Enabled := true;
   btn_dividir.Enabled := true;

    //switch
    {
    case



    }

    //qualquer coisa

  end;


procedure Tfrm_calculadora.btn_limparClick(Sender: TObject);
begin
    lb_operador.Text := '.';
    lb_valor1.Text := '';
    lb_valor2.Text := '';

    btn_somar.Enabled := true;
    btn_diminuir.Enabled := true;
    btn_multiplicar.Enabled := true;
    btn_dividir.Enabled := true;
end;

procedure Tfrm_calculadora.btn_multiplicarClick(Sender: TObject);
begin
lb_operador.Text := '*';
  btn_somar.Enabled := true;
  btn_diminuir.Enabled := true;
  btn_multiplicar.Enabled := false;
  btn_dividir.Enabled := true;
end;

procedure Tfrm_calculadora.btn_pontoClick(Sender: TObject);
begin
 if lb_operador.Text = '.' then
  begin
    lb_valor1.Text := lb_valor1.Text + ',';
  end
  else
  begin
    lb_valor2.Text := lb_valor2.Text + ',';
  end;
end;

procedure Tfrm_calculadora.btn_somarClick(Sender: TObject);
begin
lb_operador.Text := '+';
btn_somar.Enabled := false;
 btn_diminuir.Enabled := true;
 btn_multiplicar.Enabled := true;
 btn_dividir.Enabled := true;
end;

end.
