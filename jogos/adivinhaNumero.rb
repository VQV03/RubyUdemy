class AdivinharNumero
    attr_reader :numero
    attr_reader :venceu

    def initialize
        @numero = Random.rand(0...20) 
        @venceu = false
    end

    def tentar_adivinhar(numero = 0)
        if numero == @numero
            @venceu = true
            return puts "Voce venceu"
        elsif numero > @numero
            return puts "O numero informado e muito alto"
        else 
            return puts "O numero informado e muito baixo"
        end
    end
end

jogo = AdivinharNumero.new

until jogo.venceu do
    
puts "Digite um numero"
numero = gets.to_i

puts jogo.tentar_adivinhar(numero)
end