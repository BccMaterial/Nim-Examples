import std/sequtils

# map -> mapIt
# filter -> filterIt
# reduce -> foldl

when isMainModule:
  let numeros = @[1, 2, 3, 4, 5, 7, 8, 9, 10]
  # Calcula o dobro
  let dobro = numeros.mapIt(it * 2)
  echo("Lista * 2: ", dobro)

  # Filtra os pares
  let pares = numeros.filterIt(it mod 2 == 0)
  echo("Lista pares: ", pares)

  # Soma os itens
  let soma = foldl(numeros, a + b)
  echo("Soma numeros: ", soma)

