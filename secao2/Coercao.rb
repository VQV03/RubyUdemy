# Coercao/Casting e o ato de transformar um dado de uma strin para um numero por exemplo.
=begin 
.to_i to integer/pra inteiro
.to_f to float/pra numero de ponto flutuante
.to_s to string/para string
=end
puts "Digite sua idade:"
idade = gets.chomp.to_i
v2 = idade + 1
puts "Sua idade ano que vem sera: #{v2}"
