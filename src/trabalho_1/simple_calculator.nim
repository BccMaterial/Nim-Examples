import strutils

when isMainModule:
  echo("Bem-vindo à nossa calculadora =)")
  echo("Operações disponíveis:")
  echo("+ Soma\n- Diferença\n* Multiplicação\n/ Divisão")

  while true:
    try:
      echo("\nDigite a operação (ex: 10 + 5) ou 'sair' para encerrar:")
      let input = readLine(stdin).strip()
      
      if input.toLowerAscii() == "sair":
        echo "Encerrando a calculadora..."
        break
      
      let parts = input.splitWhitespace()
      if parts.len != 3:
        echo "Formato inválido. Use: número operador número"
        continue
      
      let num1 = parseFloat(parts[0])
      let operator = parts[1]
      let num2 = parseFloat(parts[2])
      
      var value: float
      
      case operator
      of "+":
        value = num1 + num2
      of "-":
        value = num1 - num2
      of "*":
        value = num1 * num2
      of "/":
        if num2 == 0:
          echo("Erro: Divisão por zero!")
          continue
        value = num1 / num2
      else:
        echo("Operador inválido. Use: +, -, *, /")
        continue
      
      echo("Resultado: ", value)
      
    except ValueError:
      echo("Entrada inválida. Certifique-se de usar números.")
    except:
      echo("Ocorreu um erro inesperado.")
