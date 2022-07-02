=begin
1 - O cachorro recebe a raça e o nome da inicialização. Não é
permitido trocar a raça do cachorro depois de inicializado o
    objeto. O cachorro pode latir “au au!” por padrão ou
    personalizado através de parâmetro.
=end
class Cachorro
    attr_accessor :nome
    attr_reader :raca

    def initialize(nome, raca)
        @nome = nome
        @raca = raca
    end

    def latir(latido = "AUAU!")
        return latido
    end
end

c1 = Cachorro.new("Bob", "vira-lata")
puts c1.nome, c1.raca, c1.latir

#c1.raca = "salsicha"
puts c1.raca
puts c1.latir("WOOFWOOF!")

puts "_________________________"

c2 = Cachorro.new("Pipoca", "labrador")
puts c2.nome, c2.raca, c2.latir

#c1.raca = "husky"
puts c2.raca
puts c2.latir("WOOFWOOF!")

puts "_________________________"

=begin
2 - O papagaio é inicializado com nome e idade. Os dois
podem ser alterados após a inicialização. O método
repetir_frase deve usar um parâmetro com a frase a ser
repetida. Caso não seja passado parâmetro o papagaio
deve “dizer” “curupaco!”.
=end

class Papagaio 
    attr_accessor :nome
    attr_accessor :idade

    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end 
    
    def repetir(repetir = "curupaco!")
        return repetir
    end
end

p1 = Papagaio.new("Junin", "4")
puts p1.nome, p1.idade, p1.repetir
puts p1.repetir("AI ZE RUBY MT RUIM")

puts "_________________________"

p2 = Papagaio.new("Gerso", "2")
puts p2.nome, p2.idade, p2.repetir
puts p2.repetir("BOM DIA!")