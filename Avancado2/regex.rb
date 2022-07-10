Regex

Abreviatura de Regular Expressions (Expressões Regulares), regex é uma sequência de caracteres especiais que nos ajudam a identificar (e selecionar) padrões de caracteres em strings.
 
3 Maneiras de criar um Regex


1 – Utilizando o formato /…/

ex:
Default
/expressao/
1
	
/expressao/

Geralmente a mais utilizada.


2 – Através do formato %r{…}

Ex:
Default
%r{expressao}
1
	
%r{expressao}

3 – Utilizando um Construtor através do Regexp.new(‘…’)

Ex:
Default
Regexp.new('expressao')
1
	
Regexp.new('expressao')

 
Casamento de Padrões

É um ato que verifica a presença de padrões em uma cadeia de caracteres.

Pode ser realizado através do operador =~ ou do método match
Operador =~

1- O operador =~ retorna o offset, ou seja, a distância entre o começo da string até o local onde ocorre o casamento de padrão especificado na expressão.
Default
/by/ =~ 'ruby'
1
	
/by/ =~ 'ruby'

 

2- A mesma comparação também pode ser realizada iniciando pela string.
Default
'ruby' =~ /by/
1
	
'ruby' =~ /by/

 

3- Quando não ocorre o casamento de padrão, o resultado é nulo
Default
'ruby' =~ /rails/
1
	
'ruby' =~ /rails/

Método match

1- Retorna um objeto do tipo MatchData, contendo todos os resultados do casamento de padrão.
Default
phrase = "Hellow, how are you?"

match_data = /how/.match(phrase)
1
2
3
	
phrase = "Hellow, how are you?"
 
match_data = /how/.match(phrase)

 

2- Em um objeto do tipo MatchData você pode, por exemplo, acessar o que vem antes do casamento através do método pre_match
Default
match_data.pre_match
1
	
match_data.pre_match

 

3- Ou acessar o que vem depois do casamento com post_match
Default
match_data.post_match
1
	
match_data.post_match

Metacharacters and Escapes

Os símbolos (, ), [, ], {, }, ., ?, +, *,  são metacharacters. Eles possuem um significado quando utilizados em expressões regulares.

1- Caso o padrão que você procura seja um metacharacter, utilize o símbolo de escape \ para realizar a busca
Default
/\?/.match('Tudo bem?')

/bem\!\!\!/.match('Muito bem!!!')
1
2
3
	
/\?/.match('Tudo bem?')
 
/bem\!\!\!/.match('Muito bem!!!')

 
Character Classes

É uma lista que informa quais caracteres devem aparecer em um ponto do casamento.

1- Uma character class é delimitada por colchetes [, ]
Default
/[t]exto/.match('texto começando com t')
1
	
/[t]exto/.match('texto começando com t')

 

2- Você pode especificar um range com o símbolo –
Default
/[1-5]/.match('123')
1
	
/[1-5]/.match('123')

Assim, é procurado um padrão onde o primeiro número pode ser 1, 2, 3, 4 ou 5

3- Note que o casamento também ocorre em uma string que começa com o número 2
Default
/[1-5]/.match('223')
1
	
/[1-5]/.match('223')

 

4- O range pode ser utilizado para letras
Default
/[a-z]/.match('Oi')
1
	
/[a-z]/.match('Oi')

 

Existem alguns metacharacters que se comportam como character classes

5- Por exemplo, o metacharacter \d verifica o padrão [0-9]
Default
/A\d/.match('A4')
1
	
/A\d/.match('A4')

 
Repetition

É possível definir a repetição de um mesmo padrão, evitando escrever a mesma coisa diversas vezes.

1- Por exemplo, verifique o casamento de padrão em uma etiqueta que começa com uma letra e 3 números.
Default
"A343".match(/[A-Z]\d{3}/)
1
	
"A343".match(/[A-Z]\d{3}/)

Ao em vez de digitar \d\d\d você pode escrever \d{3}

2- Verifique se uma letra foi escrita mantendo o padrão de repetição entre três ou mais vezes
Default
"BBB AAAA".match(/A{3,}/)
1
	
"BBB AAAA".match(/A{3,}/)

A vírgula em {3, } informa que a repetição pode ocorrer 3 ou mais vezes

Conclui-se que a Expressão Regular é uma ferramenta muito poderosa, capaz de identificar qualquer padrão em uma string. Caso se interesse pelo tema, recomendo fortemente que leia esta documentação.
 
Math

Math é um módulo nativo para funções matemáticas.

1- Sabendo a raiz quadrada de 64
Default
Math.sqrt(64)
1
	
Math.sqrt(64)

 

2- Verificando o logaritmo de 10000 na base 10
Default
Math.log10(10000)
1
	
Math.log10(10000)

 

3- O logaritmo de 16 na base 2
Default
Math.log2(16)
1
	
Math.log2(16)

 

4- Calculando o cosseno para o ângulo de 30º

Primeiro transforme o ângulo em um valor radiano
Default
radian = 30 * (Math::PI / 180)
1
	
radian = 30 * (Math::PI / 180)

 

Depois utilize o método cos
Default
Math.cos(radian)
1
	
Math.cos(radian)

O módulo Math também fornece o valor de duas constantes bastante utilizadas:

E e PI

5- Para consultar o valor da constante E execute
Default
Math::E
1
	
Math::E

 

2- Consulte o valor da constante PI com a instrução
Default
Math::PI
1
	
Math::PI

Tenha acesso a mais métodos matemáticos do módulo Math através da documentação.