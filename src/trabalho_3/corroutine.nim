# Para rodar esse código, é necessário rodar `nimble corroutine`

import std/coro

var counter = 0

proc worker1() =
  for i in 0..5:
    echo "Worker 1 executando: ", i
    counter += 1
    suspend(2)

proc worker2() =
  for i in 0..15:
    echo "Worker 2 executando: ", i
    counter += 1
    suspend(1)

# Cria as corrotinas

echo "Iniciando execução das corrotinas..."
echo "========================================="

let coro1 = start(worker1, 16384)
let coro2 = start(worker2, 16384)
# Executa até ambas terminarem
while alive(coro1) or alive(coro2):
  run()

echo "========================================="
echo "Execução concluída!"
echo "Valor final do counter: ", counter
