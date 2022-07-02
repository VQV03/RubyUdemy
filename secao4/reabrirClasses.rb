x = "Vitor"
puts x.class
puts x.size
puts x.upcase

class String
    def falar(palavra = "oi")
        puts "Falando #{palavra}"
    end
end

puts x.falar