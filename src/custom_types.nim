when isMainModule:
  # Declaração dos tipos
  type Centimetro = distinct float
  type Jarda = distinct float
  type Polegada = distinct float

  # Conversões entre tipos
  converter toCm(p: Polegada): Centimetro = Centimetro(float(p) * 2.54)
  converter toCm(j: Jarda): Centimetro = Centimetro(float(j) * 91.44)
  converter toPol(c: Centimetro): Polegada = Polegada(float(c) / 2.54)
  converter toPol(j: Jarda): Polegada = Polegada(float(j) * 36)
  converter toJarda(c: Centimetro): Jarda = Jarda(float(c) / 91.44)
  converter toJarda(p: Polegada): Jarda = Jarda(float(p) / 36)

  # Declaração de operadores
  # Nas somas, definimos como padrão de retorno o tipo com menor valor
  proc `+`(a: Polegada, b: Centimetro): Centimetro = Centimetro(float(toCm(a)) + float(b))
  proc `+`(a: Jarda, b: Centimetro): Centimetro = Centimetro(float(toCm(a)) + float(b))
  proc `+`(a: Jarda, b: Polegada): Polegada = Jarda(float(toPol(a)) + float(b))
  proc `$`(c: Centimetro): string = $float(c) & " cm"
  proc `$`(p: Polegada): string = $float(p) & " pol"
  proc `$`(j: Jarda): string = $float(j) & " jd"

  let centimetro = Centimetro(196.30)
  let polegada = Polegada(28)
  let jarda = Jarda(28)

  echo("centimetro + polegada: ", centimetro + polegada)
  echo("jarda + polegada: ", jarda + polegada)
  echo("jarda + centimetro: ", jarda + centimetro)
  echo(toPol(centimetro))
  echo(toJarda(centimetro))
