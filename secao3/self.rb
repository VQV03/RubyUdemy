class Teste
    def meu_self
      puts "Esse é meu self: #{self}"
    end
  end
  
  class Teste2
    def meu_self
      puts "Esse é meu self: #{self}"
    end
  end
  
  t1 = Teste.new
  t1.meu_self
  
  t2 = Teste2.new
  t2.meu_self