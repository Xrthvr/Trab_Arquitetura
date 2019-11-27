#Main{
#int num, result;
#Console.WriteLine("Digite um número: ");
#num = int.Parse(Console.ReadLine());           #Programa na linguagem alto nivel(C#)
#result = num + num;
#Console.WriteLine("{0}", result);
#Console.ReadKey();

            .data                        #Aqui onde se cria as variaveis em Assembly
Mensagem:  .asciiz "Digite um número\n"  #Cria uma variável string
num:       .word 1                       #Cria uma variável int
result:    .word 1                       #Cria uma variável int

            .text                        #Iniciando os codigos do programa usando as variaveis criadas no .data
main: li $v0, 4                          #Declarando a main
la $a0, Mensagem                         #Exibe a Mensagem na tela
syscall                                  #Chama o sistema

li $v0, 5                                #Lê um inteiro
syscall                                  #Chama o sistema

sw $v0, num                              #Joga na variavel o que o usuario digitou
add $t0, $v0, $v0                        #Joga no temporario o dobro do valor
sw $t0, result                           #Joga na variavel result o valor do temporario

li $v0, 1                                #Le um inteiro
move $a0, $t0                            #Exibe o resultado na tela
syscall                                  #Chama o sistema

jr $ra                                   #Retorna para main 