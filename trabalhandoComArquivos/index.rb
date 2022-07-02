=begin
File.open("teste.txt", "w") do |f1|  # Existem modos para se abrir um arquivo, como "w" para escrita, "r" para ler, "a" para escrever em um arquivo ja existente sem sobreeescrever
    f1.puts "Vitor Queiroz - Ruby"
end
=end

File.open("teste.txt", "r") do |f1|
    while line = f1.gets
        puts line
    end
end

puts ARGV
puts ARGV.size
if ARGV.size > 0 
    File.open(ARGV[0], 'r') do |f2|
        while line = f2.gets
            puts line
        end
    end
else 
    puts "Voce deve informar o nome do arquivo a ser aberto, Ex: ruby app.rb teste.txt"
end
