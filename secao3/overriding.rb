class Calculadora
    def somar(n1, n2)
        return n1 + n2
    end
end

class CalculadoraFashion
    #OverRiding ou sobre escrita de metodo
    def somar(n1, n2)
        "A soma e: #{n1 + n2}"
    end
end

##################################

c = Calculadora.new
puts c.somar(2,3)

cf = CalculadoraFashion.new
puts cf.somar(2,3)
