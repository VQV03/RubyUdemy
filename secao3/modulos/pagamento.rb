module Pagamento
    def pagar(bandeira, numero, valor)
        puts "Pagando com o cartao #{bandeira} o valor de R$#{valor}..."
    end

    class Visa
        def pagando
            puts "Pagando.."
        end
    end
end