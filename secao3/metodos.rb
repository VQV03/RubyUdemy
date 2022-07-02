class Pessoa
    def gritar(texto = "AAAAAAAAAA") #Desse modo eu tenho um valor default, que caso nao seja passado um texto novo, ele sera impresso
        return "Gritando... #{texto}" # o return e desnecessario, mas e bom usar para deixar o codigo mais explicito
    end

    def agradecer(texto = "Obrigado!")
        return texto
    end
end   

obj1 = Pessoa.new
result1 = obj1.gritar
result2 = obj1.gritar("BBBBBBBBBBB")
result3 = obj1.agradecer
puts result1, result2, result3