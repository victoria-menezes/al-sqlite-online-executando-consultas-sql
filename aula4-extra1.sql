/*
Imagine que você é o responsável pelo sistema de vendas de ingressos online do CodeChella, um festival de música multicultural que atrai centenas de milhares de fãs. Seu sistema precisa calcular o valor final dos ingressos que podem incluir taxas adicionais baseadas em percentuais.

Você recebeu a seguinte tarefa: um valor de ingresso que resulta em uma taxa adicional de $20.75. De acordo com a política do festival, qualquer fração de dólar na taxa deve ser arredondada para o próximo valor inteiro. Qual função SQL você deve utilizar para garantir o cumprimento desta política?
*/

ceil(valor + taxa)