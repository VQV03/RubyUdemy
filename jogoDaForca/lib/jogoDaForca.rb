def da_boas_vindas
    puts "Bem vindo ao jogo da forca"
    puts "Qual é o seu nome?"
    nome = gets.chomp
    puts "\n\n\n\n"
    puts "Começaremos o jogo para você, #{nome}"
    nome
end

def escolhe_palavra_secreta
    puts "Escolhendo uma palavra secreta"
    #Definindo a palavra secreta a partir das palavras no arquivo "palavras.txt"
    arquivo_de_palavras = File.read("../palavras.txt")
    todas_as_palavras = arquivo_de_palavras.split("\n")
    percorre_dicionario = rand(todas_as_palavras.size)
    palavra_secreta = todas_as_palavras[percorre_dicionario].downcase
    puts "Palavra secreta com #{palavra_secreta.size} letras...boa sorte!"
    return palavra_secreta
end

def nao_quer_jogar?
    #Tratativa para repetir o jogo
    puts "\n\n\nDeseja jogar novamente? (S/N)"
    quer_jogar = gets.strip.upcase
    nao_quero_jogar = quer_jogar == "N"
end

def pede_um_chute(erros, chutes)
    1.times do 
        puts "\n\n\n\n"
        puts "Erros até agora: #{erros}"
        puts "Chutes até agora: #{chutes}"
        puts "Entre com uma letra"
        chute = gets.chomp.downcase
        #Verificar se o usuario colocou somente uma letra
        tamanho = chute.length
        if tamanho != 1
            puts "Voce deve colocar apenas uma letra"
            redo
        else 
            puts "Será que acertou? Você chutou #{chute}"
            chute
        end
        return chute
    end
end

def joga(nome)
    palavra_secreta = escolhe_palavra_secreta

    erros = 0
    chutes = []
    pontos_ate_agora = 0
    #Controlar o preenchemento do array
    contador_de_preenchemento = 0

    while erros < 5 
        chute = pede_um_chute(erros, chutes)
        chutes << chute

        if contador_de_preenchemento == 0
            #Montar o Array dos espacos da palavra
            palavra_completa = []
            i = 0
            contador_de_preenchemento += 1
            while palavra_secreta.length > i
                i += 1
             palavra_completa << "_"
            end 
        end 

        chutou_uma_letra = chute.size == 1
        if chutou_uma_letra

            #Verificar se a letra chutada esta na palavra
            letra_procurada = chute [0]
            total_encontrado = palavra_secreta.count letra_procurada

            if total_encontrado == 0
                puts "Letra não encontrada."
                erros += 1
            else
                #Subistituir os espacos vazios pelas letras
                palavra_secreta_array = palavra_secreta.split("")
                palavra_secreta_encontrada = palavra_secreta_array.each_with_index.filter_map { |letra, index|
                    index if letra_procurada == letra
                }

                palavra_secreta_encontrada.each do |element|
                    palavra_completa[element] = chute[0]
                end

                print "#{palavra_completa}"
                puts "\n"

                palavra_formada = palavra_completa.join("")

                #Execucao da vitoria
                if palavra_formada == palavra_secreta
                    puts "Parabéns, você acertou!"
                    pontos_ate_agora += 100
                    break
                end
            end
        end
    end
    if erros >= 6
        puts "\n\n\n\nVoce perdeu o jogo"
        pontos_ate_agora -=30
    end
end

nome = da_boas_vindas

#Finalizar o Jogo
loop do
    jogo = joga(nome)
    if nao_quer_jogar?
        break
    end
end