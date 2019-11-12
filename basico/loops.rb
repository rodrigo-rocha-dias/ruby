#_________________ ESTRUTURA DE REPETIÇÃO__________________________

#__________________________________________________________________
# TIMES

# 5.times do |i|
#   puts "Repetindo a mensagem " + i.to_s + " vez(es)."
# end

#__________________________________________________________________
# WHILE

# init = 0
# while init <= 10
#   puts "Repetindo a mensagem " + init.to_s + " vez(es)."
#   init += 1
# end

#__________________________________________________________________
# FOR

# for item in (0...10)
#   puts "Repetindo a mensagem " + item.to_s + " vez(es)."
# end

#__________________________________________________________________
# ARRAYS

vingadores = ["IronMan", "Hulk", "SpiderMan", "Thor"]

vingadores.each do |v|
  puts v
end
