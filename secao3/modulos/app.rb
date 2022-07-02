require_relative 'pagamento.rb'

include Pagamento

puts "Digite a bandeira do cartao:"
b = gets.chomp

puts "Digite o numero do cartao:"
n = gets.chomp

puts "Digite o valor da compra"
v = gets.chomp

Pagamento.pagar(b, n, v)