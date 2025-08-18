
when isMainModule:
  # Tipo Inferido, mas não pode ser alterado:
  let numero = 1
  echo("Número declarado: ", numero)

  # Não podemos fazer isso, pois o Nim possui declaração estática
  numero = "string"
  # Output: 
  # Error:  Build failed for the package: nim_examples

  let texto = "texto"
  echo("Texto declarado: ", texto)

  # Não podemos fazer isso, pois o Nim possui tipagem forte
  let resultado = texto + numero
  # Output:
  # Error: type mismatch
  # Expression: texto + numero
  #   [1] texto: string
  #   [2] numero: int


