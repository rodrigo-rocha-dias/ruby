

class Conta
  # atributo
  attr_accessor :saldo, :nome #atributo nulo

  # contrutores um metedo é executado toda vez que eu crio um objeto
  def initialize(nome) # metodo construtor
    self.saldo = 0.0 # significa que toda vez que eu chamar o "new", esse metodo será executado
    self.nome = nome
  end

  # metodo / (valor = ARGUMENTO)
  def deposita(valor) #.to_s (converter para string)
    # self é recurso do Ruby para invocar outro objeto dentro da propria classe. (consegue invocar um metodo e invocar um atributo) é analogo do this do Java e do C#
    self.saldo += valor # pegando o saldo e acrescentando o valor
    # (valor.to_s) o .to_s está convertendo para sting
    #puts "Depositando a quantia de R$ " + valor.to_s + " reais."
    # outra forma de converter (mais chamada de interpolação de strings)
    puts "Depositando a quantia de R$ #{valor} reais na conta de #{self.nome}"
  end
end

# estanciando uma nova conta na varial "c"
c = Conta.new("Rodrigo")

# c.saldo = 0.0 # iniciar o saldo que eu tenho da conta com 0
# chamar o metodo "deposita"
c.deposita(100.00)
# motrar na tela o valor do saldo
puts c.saldo

c.deposita(10.00)
puts c.saldo
puts c.nome
