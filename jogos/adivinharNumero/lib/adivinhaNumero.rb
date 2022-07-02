require_relative 'inicializar.rb'
require_relative 'sortearNumero.rb'

class AdivinharNumero
  attr_reader :numero
  attr_reader :venceu

  def initialize
    Inicializacao.inicializando
    @numero = SortearNumero.sortear #Random.rand(1..10)
    @venceu = false
  end

  def tentar_adivinhar(numero = 0)
    if numero == @numero
      @venceu = true
      return "Voce VENCEU!"
    elsif numero > @numero
      return "O numero informado e muito alto..."
    else
      return "O numero informado e muito baixo..."
    end
  end
end