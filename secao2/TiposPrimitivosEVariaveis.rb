# Tipos de numeros: Inteiros (1, 2, 3, 9, ...) representado pela class integer e Reais (4.785, 9.5818, ...) representados pela class float

puts 34.class #integer
puts 4.545.class #float

#Tipo Caracter/String: "sfsfs", "%^55$#$%jjggdhf", ...
puts "Bom dia".class

#Ruby faz concatenacao de strings com: "1" + "3", o resultado logico seria 4, porem o resultado impresso e "31".
puts "3" + "1"

#Tipo Booleano/Boolean: TrueClass | FalseClass
puts true.class
puts false.class

#As variaveis herdam o tipo de seus valores
v1 = 45
puts v1 +  5
puts v1.class
v2 = 9.458
puts v2 + 9.7154
puts v2.class