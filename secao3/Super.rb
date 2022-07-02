class Franquia
    def descricao
        "Franquia"
    end
end

class Franqueado < Franquia
    def descricao
        puts super #Invocando o metodo descricao da Franquia
        "Franqueado"
    end
end

#################################

f = Franquia.new
puts f.descricao

puts "____________________________"

ff = Franqueado.new
puts ff.descricao

#################################

class Conta
    attr_reader :numero, :saldo

    def initialize(numero, saldo = 0)
    end
end

class ContaEspecial < Conta 
    attr_reader :limite_especial

    def initialize(numero, saldo, limite_especial)
        super(numero, saldo) # Initialize da classe pai
        @limite_especial = limite_especial
    end
end
################################

c1 = Conta.new("001", 100.00)
puts c1.numero, c1.saldo

c2 = ContaEspecial.new("002", 5000.00, 10000.00)
puts c2.numero, c2.saldo, c2.limite_especial
