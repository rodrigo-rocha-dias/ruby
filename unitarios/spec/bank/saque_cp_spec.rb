require_relative "../../app/bank.rb"

describe ContaPoupanca do # suite
  describe "Saque" do # sub-suite
    context "quando o valor é positivo" do
      before(:all) do
        @cp = ContaPoupanca.new(1000.00) # Criado uma classe que representa conta corrente
        @cp.saca(200.00) # função
      end
      it "entao atualiza saldo" do
        expect(@cp.saldo).to eql 798.00
      end
    end
    context "quando o saldo é zero" do
      before(:all) do
        @cp = ContaPoupanca.new(0.0)
        @cp.saca(100.00)
      end
      it "entao exibe mensagem" do
        expect(@cp.mensagem).to eql "Saldo insuficiente para saque :("
      end
      it "e o saldo final com zeros" do
        expect(@cp.saldo).to eql 0.00
      end
    end
    context "quando o saldo é insuficiente" do
      before(:all) do
        @cp = ContaPoupanca.new(100.0)
        @cp.saca(101.00)
      end
      it "entao exibe mensagem" do
        expect(@cp.mensagem).to eql "Saldo insuficiente para saque :("
      end
      it "e o saldo permanece" do
        expect(@cp.saldo).to eql 100.00
      end
    end

    context "quando supera o limite de saque" do
      before(:all) do
        @cp = ContaPoupanca.new(1000.00)
        @cp.saca(701.00)
      end
      it "entao exibe mensagem" do
        expect(@cp.mensagem).to eql "Limite máximo por saque é de RS 500"
      end
      it "e o saldo permanece" do
        expect(@cp.saldo).to eql 1000.00
      end
    end
  end
end
