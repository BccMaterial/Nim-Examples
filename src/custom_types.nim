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

  # Declaração de operadores (Nesse caso, formatação de string)
  proc `$`(c: Centimetro): string = $float(c) & " cm"
  proc `$`(p: Polegada): string = $float(p) & " pol"
  proc `$`(j: Jarda): string = $float(j) & " jd"

  let centimetro = Centimetro(196.30)

  echo(centimetro)
  echo(toPol(centimetro))
  echo(toJarda(centimetro))
