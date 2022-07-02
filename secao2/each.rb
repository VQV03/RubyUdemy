a = [1, 2, 3, 6, 7]

#a.each {|element| puts element}  #Com |elemet| eu digo para o codigo que ele passe em cada elemento do array e o chame de elemento e entao imprima esse elemento

a.each do |el|
    puts el
    puts el * 2
    puts el * 3
end