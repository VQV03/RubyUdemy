class Pessoa

    attr_accessor :nome
    attr_accessor :idade

    def initialize # igual o constructor do js
        @nome = "Fulano"
        @idade = "0"
    end

    def gritar(texto = "AAAAAAAAAA")
        return "Gritando... #{texto}" 
    end
    
    def agradecer(texto = "Obrigado!")
        return texto
    end
 end   
    
pessoa1 = Pessoa.new
pessoa1.nome= "Vitor Queiroz"
pessoa1.idade= 19
    
pessoa2 = Pessoa.new
pessoa2.nome= "Gerson Arante"
pessoa2.idade= 9999
    
puts pessoa1.nome
puts pessoa1.idade
    
puts pessoa2.nome
puts pessoa2.idade