class Teste
    def ola # Metodo de Instancia
      "Olá!"
    end
  
    def self.hello # Metodo de Classe
      "Hello!"
    end
end
  
obj = Teste.new #Sou obrigado a instanciar a classe para funcionar
puts obj.ola
  
puts Teste.hello #Nao sou obrigado a instancia a classe