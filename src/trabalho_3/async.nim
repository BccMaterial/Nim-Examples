import asyncdispatch, asyncfile

proc tarefaAssincrona(nome: string, intervalo: int): Future[void] {.async.} =
  for i in 1..5:
    echo "Tarefa '", nome, "' - Iteração: ", i
    # await não bloqueia a thread principal
    await sleepAsync(intervalo)
  echo "Tarefa '", nome, "' COMPLETADA!"

proc main() {.async.} =
  echo "Iniciando exemplo async/await..."
  echo "====================================="
  
  # Executa tarefas concorrentemente
  let futuro1 = tarefaAssincrona("RÁPIDA", 100)
  let futuro2 = tarefaAssincrona("LENTA", 500)
  
  # Aguarda ambas completarem
  await futuro1
  await futuro2
  
  echo "====================================="
  echo "Todas as tarefas finalizadas!"

# Executa o exemplo
waitFor main()
