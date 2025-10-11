import sugar

proc soma(a, b: int): int =
  return a + b

proc mult(a, b: int): int =
  return a * b

# Podemos declarar um criador de função parcial, e aplicar currying nele
proc criaMultParcial(a: int): proc (b: int): int =
  return proc (b: int): int = 
    return mult(a, b)

when isMainModule:
  # Usando o módulo sugar:
  let soma2 = (b: int) => soma(2, b)
  # Usando função criada
  let mult5 = criaMultParcial(5)
  echo("2 + 1 = ", soma2(1))
  echo("5 * 2 = ", mult5(2))
  echo("10 * 10 = ", criaMultParcial(10)(10))

