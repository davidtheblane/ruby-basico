Time

O Ruby conta com uma classe chamada Time para representar datas e horas.

A seguir você verá como é natural utilizar alguns métodos dessa classe para obter informações do tempo.
 
Trabalhando com times

1- Para imprimir o horário atual execute
Default
time = Time.now
puts time
1
2
	
time = Time.now
puts time

 
2- Para o ano use o método year

Default
puts time.year
1
	
puts time.year

 

3- Imprimindo o mês do ano com o método month
Default
puts time.month
1
	
puts time.month

 

4- Para saber o dia do mês utilize o método day
Default
puts time.day
1
	
puts time.day

 

5- O método strftime permite a formatação de uma data em uma forma específica. Essa formatação é feita por diretivas que começam com o símbolo de %.
Default
time.strftime('%d/%m/%y')
1
	
time.strftime('%d/%m/%y')

Significado das diretivas

%d -> Dia do mês

%m -> Mês do ano

%y -> Ano

6- Verificando se o dia da semana é sábado
Default
puts time.saturday?
1
	
puts time.saturday?

 

Você também pode comparar duas datas.

7- Crie um novo objeto com o horário atual
Default
time2 = Time.now
1
	
time2 = Time.now

 

8- Ao comparar as datas de forma completa o resultado será false
Default
time == time2 # => false
1
	
time == time2 # => false

 

9- Comparando o ano das duas datas, o resultado será true
Default
time.year == time2.year # => true
1
	
time.year == time2.year # => true