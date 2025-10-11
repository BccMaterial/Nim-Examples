# Aqui aplicamos polimorfismo na proc calculadora

proc soma(x, y: int): int = x + y
proc multiplica(x, y: int): int = x * y

proc calculadora(
  a, b: int,
  operacao: proc(x, y: int): int
): int =
  return operacao(a, b)

when isMainModule:
  echo("5 + 3 = ", calculadora(5, 3, soma))
  echo("5 * 3 = ", calculadora(5, 3, multiplica))
