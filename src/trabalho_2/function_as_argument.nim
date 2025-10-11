when isMainModule:
  # Define duas funções simples
  proc soma(x, y: int): int = x + y
  proc multiplica(x, y: int): int = x * y
  
  # Define uma função que recebe outra função como parâmetro
  proc calculadora(
    a, b: int, 
    operacao: proc(x, y: int): int
  ): int =
    return operacao(a, b)
  
  # Usa a função 'calculadora' com diferentes operações
  echo("5 + 3 = ", calculadora(5, 3, soma))
  echo("5 * 3 = ", calculadora(5, 3, multiplica))
