

# # Famoso Try/Catch do Java
# begin
#   # Devo tentar alguma coisa
#   file = File.open("./ola")
#   if file
#     puts file.read
#   end
# rescue Exception => e
#   # obter um possivel erro
#   puts e.message
#   puts e.backtrace
# end

# forma meio que hibrida, metodo com try/catch
def soma(n1, n2)
  n1 + n2
rescue Exception => e
  ## pode mostrar a mensagem
  # puts e.message
  # pode mostrar uma mensagem amigavel para o usuário
  puts "Erro ao efetuar a soma. Tente novamente"
end

soma("10", 5)
