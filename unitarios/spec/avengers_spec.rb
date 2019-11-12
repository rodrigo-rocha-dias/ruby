class AvengerdHeadQuarter
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(avenger)
    self.list.push(avenger)
  end
end

# TDD Desenvolvimento guiado por testes
describe AvengerdHeadQuarter do
  it "deve adicionar um vingador" do
    hq = AvengerdHeadQuarter.new # Classe instanciada

    hq.put("SpiderMan") #Adicionei
    expect(hq.list).to eql ["SpiderMan"] # Verificar se o mesmo foi adicionado
  end

  it "deve adicionar uma lista de vingadores" do
    hq = AvengerdHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")

    res = hq.list.size > 0

    expect(hq.list.size).to be > 0 # verificando se esse item é uma lista
    # expect(hq.list).to include "Hulk" # Validador "include" pra ver se "hulk" contem na minha lista
    expect(res).to be true
  end

  it "thor deve ser o primeiro da lista" do
    hq = AvengerdHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")

    expect(hq.list).to start_with "Thor"
  end

  it "Ironman deve ser o ultimo da lista" do
    hq = AvengerdHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")
    hq.put("Ironman")

    expect(hq.list).to end_with ("Ironman")
  end

  it "deve conter o sobrenome" do
    avenger = "Peter Parker"
    expect(avenger).to match(/Parker/)
    expect(avenger).not_to match(/Rodrigo/)
  end
end
