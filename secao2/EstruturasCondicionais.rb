puts "Digite um numero"
v1 = gets.chomp.to_i

#Condicional SE / IF
if v1 > 10 then
    puts "O valor digitado e maior do que 10"
elsif v1 >= 5 && v1 <= 10
    puts "O valor esta entre 5 e 10"
else
    puts "O valor digitado e menor ou igual a 5"
end

#Condicional UNLESS
puts "Digite um numero"
v2 = gets.chomp.to_i

unless v2 > 10
    puts "Seu numero e menor que 10"
else
    puts "Seu numero e maior que 10"
end

#Condicional CASE/WHEN
puts "Escolha um numero entre 1 e 5"
v3 = gets.chomp.to_i

case v3
    when 1
        puts "Voce escolheu 1"
    when 2
        puts "Voce escolheu 2"
    when 3
        puts "Voce escolheu 3"
    when 4
        puts "Voce escolheu 4"
    when 5
        puts "Voce escolheu 5"
    else
        puts "Opcao invalida"
end