class Pato
    def quack!
        puts "Quack! Quack!"
    end
end

class PatoDoente
    def quack!
        puts "Queck..."
    end
end

class Pessoa
    def apertarPato(pato)
        pato.quack!
    end
end

p1 = Pato.new
p2 = PatoDoente.new

p = Pessoa.new

p.apertarPato(p1)
p.apertarPato(p2)