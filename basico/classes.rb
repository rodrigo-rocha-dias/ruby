# Ruby é considerada puramente orientada a objeto
# Porque no ruby, tudo são objetos

# Classe possui atributos e metodos
# Caracteristicas e ações

# Carro (Nome, Marca, Modelo, Cor, Quantidade sw portas, etc...)
# Ligar, Buzinar, parar, etc...

class Carro
  attr_accessor :nome

  # Metodo de emcapsulamento
  def ligar
    puts "O carro está pronto pra iniciar o trajeto."
  end
  # Metodo de emcapsulamento
  def desligar
    puts "O carro esta pronto para terminar o trajeto, pode desligar o carro."
  end
end

civic = Carro.new
civic.nome = "Civic"

puts civic.nome
civic.desligar
