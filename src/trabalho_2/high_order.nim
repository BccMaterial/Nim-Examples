import std/sequtils

# map -> mapIt
# filter -> filterIt
# reduce -> foldl

func soma(lista: seq[int]): int =
  return foldl(lista, a + b)

func dobrar_itens(lista: seq[int]): seq[int] =
  return lista.mapIt(it * 2)

func filtrar_pares(lista: seq[int]): seq[int] =
  return lista.filterIt(it mod 2 == 0)

when isMainModule:
  let numeros = @[1, 2, 3, 4, 5, 7, 8, 9, 10]

  # Calcula o dobro
  let dobro = dobrar_itens(numeros)
  echo("Lista * 2: ", dobro)

  # Filtra os pares
  let pares = filtrar_pares(numeros)
  echo("Lista pares: ", pares)

  # Soma os itens
  let total = soma(numeros)
  echo("Soma numeros: ", total)

