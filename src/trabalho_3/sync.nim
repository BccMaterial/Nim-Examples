import std/locks, std/threadpool

# Sincronização por Locks
var cont = 0 # Compartilhado entre threads
var mutex: Lock # Protege o acesso ao contador
initLock(mutex) # Inicialização do mutex

proc task(n:int) {.thread.} =
  for i in 1..1000:
    # Bloqueia o mutex, gerando acesso exclusivo a thread atual para a seção crítica
    acquire(mutex)
    cont += 1
    # Faz a liberação da mutex, permitindo que outra thread seja executada
    release(mutex)
