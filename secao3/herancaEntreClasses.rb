class Pai
    attr_accessor :nome
    
    def falar(texto = "Alo!")
        texto
    end
end

class Filha < Pai
end

pai = Pai.new
pai.nome = "Vitor"
puts pai.nome
puts pai.falar

puts "_________________"

f = Filha.new
f.nome = "zezin"
puts f.nome
puts f.falar("Hello!")

puts "_________________"

class Funcionario
    attr_accessor :nome, :cpf, :salario
end

class Gerente < Funcionario
    attr_accessor :senha, :tempo_empresa
end

f = Funcionario.new

puts "Funcionario..."
f.nome = "gerso"
f.cpf = 123456
f.salario = 1500

puts f.nome, f.cpf, f.salario

puts "_________________"

g = Gerente.new

puts "Gerente..."
g.nome = "zezin"
g.cpf = 654321
g.salario = 5100
g.senha = 987654
g.tempo_empresa = 5

puts g.nome, g.cpf, g.salario, g.senha, g.tempo_empresa