require_relative "../../app/bank.rb"

describe ContaCorrente do # suite
  describe "Saque" do # sub-suite
    context "quando o valor é positivo" do
      before(:all) do
        @cc = ContaCorrente.new(1000.00) # Criado uma classe que representa conta corrente
        @cc.saca(200.00) # função
      end
      it "entao atualiza saldo" do
        expect(@cc.saldo).to eql 795.00
      end
    end
    context "quando o saldo é zero" do
      before(:all) do
        @cc = ContaCorrente.new(0.0)
        @cc.saca(100.00)
      end
      it "entao exibe mensagem" do
        expect(@cc.mensagem).to eql "Saldo insuficiente para saque :("
      end
      it "e o saldo final com zeros" do
        expect(@cc.saldo).to eql 0.00
      end
    end
    context "quando o saldo é insuficiente" do
      before(:all) do
        @cc = ContaCorrente.new(100.0)
        @cc.saca(101.00)
      end
      it "entao exibe mensagem" do
        expect(@cc.mensagem).to eql "Saldo insuficiente para saque :("
      end
      it "e o saldo permanece" do
        expect(@cc.saldo).to eql 100.00
      end
    end

    context "quando supera o limite de saque" do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.saca(701.00)
      end
      it "entao exibe mensagem" do
        expect(@cc.mensagem).to eql "Limite máximo por saque é de RS 700"
      end
      it "e o saldo permanece" do
        expect(@cc.saldo).to eql 1000.00
      end
    end
  end
end
