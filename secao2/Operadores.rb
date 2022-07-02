=begin Operadores Aritimeticos
+ soma
- subtracao
/ divisao
* multiplicacao
% modulo ->  ou seja por ex na divisao de 5/2 o modulo dessa divisao sera 1
** exponencial
=end

=begin Operadores Relacionais
> maior que
< menor q
>= maior/igual q
<= menor/igual q
== igual a
!= diferente de
Esses operadores retornam um valor boolean (true/false)

<=> comparacao, ele retorna um valor entre -1,0,1, caso o elemento da direita for maior, ele retorna -1, caso o elemento da esquerda for maior ele retorna 1, caso sejam iguais 0, ex 1 <=> 2 -> -1
=en

=begin Operadores de atribuicao
=
+=
-=
*=
/=
%=
**=
=end

=begin Operadores Logicos
v1 = 34
v2 = 56
v3 = 2
v4 = 7

# &&/and
    if (v1 > v2) && (v3 < v4)
        puts "Condicao atendida nos dois casos"
    else
        puts "Condicao nao atendida nos dois casos"
    end

# ||/or
    if (v1 > v2) || (v3 < v4)
        puts "Uma das condicoes foi atendida"
    else
        puts "Nenhuma das condicoes foi atendida"
    end

# !/not 
    if !(v3 > v4)
        puts "Negacao atendida"
    else
        puts "Negacao nao atendida"
    end
=end

=begin Operadores de Intervalo
.. Cria uma sequencia incluindo o elemento final e inicial, ex (7..10) -> 7, 8, 9, 10
... Cria uma sequencia excluindo o elemento final, ex (7...10) -> 7, 8, 9
=end
