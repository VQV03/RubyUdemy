# gets e puts
#puts imprime o resultado de algo na tela
#gets recebe uma string digitada pelo usuario

puts "Ola"
puts "Digite seu nome:"
#.chomp retira o "/n" que significa new line/quebra de linha 
nome = gets.chomp
puts "Seu nome e: #{nome}"
puts "Digite sua idade"
idade = gets.chomp
puts "Sua idade e: #{idade}"