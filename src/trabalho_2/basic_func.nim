
# Exemplo com proc
proc soma(a, b: int): int =
  return a + b

# Exemplo com func
func sub(a, b: int): int =
  return a - b

when isMainModule:
  echo("5 + 5 = ", soma(5, 5))
  echo("5 - 5 = ", sub(5, 5))
