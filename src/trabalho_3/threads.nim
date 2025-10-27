import std/[threadpool, sugar]

##########################
### Usando Thread Pool ###
##########################

echo "Usando thread pool..."
# Função executada na thread
proc worker(msg: string): string {.thread.} =
  echo("Criando worker com mensagem: \"", msg, "\"...")
  return "Worker recebeu: " & msg

# Cria uma thread e retorna um FlowVar
let future = spawn worker("Olá mundo!")

# Bloqueia a thread principal até que o resultado esteja pronto
#"^" espera que a FlowVar esteja pronta para retornar o valor ou passar uma excessão, caso a task falhe.
echo ^future 
echo "Feito."

######################################
### Comunicação por ponteiros crus ###
######################################

echo "Usando Ponteiros crus..."
var n = 42
var ponteiro = addr(n) #Pode passar o ponteiro entre threads, mas é necessário tomar cuidado com a sincronização

#Memória fora do garbage colector:
var dado = cast[ptr int](alloc(sizeof(int)))
dado[] = 123
echo(dado[])
dealloc(dado)
echo "Feito."

##########################
### Geração de Threads ###
##########################

echo "Usando geração de threads..."
proc tarefaPesada(n: int): int {.thread.} = #"{.thread.} indica que a tarefaPesada é escrita para rodar em worker threads
  var acc = 0

  for i in 1..(n * 1000) : acc += i
  
  result = acc

#O retorno de spawn será um "FlowVar[T]", um objeto que inicialmente tem estado pendente até a task(thread) ser concluída
let futures = collect(newSeq):
  for i in 1..4: 
    spawn tarefaPesada(i)
  
for future in futures:
  echo "Resultado: ", ^future #"^" espera que a FlowVar esteja pronta para retornar o valor ou passar uma excessão, caso a task falhe.

echo "Feito."
