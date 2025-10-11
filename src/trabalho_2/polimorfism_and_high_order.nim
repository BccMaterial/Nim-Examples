proc aplicarDuasVezes[T](x: T, f: proc(p: T): T): T = #T se refere a um tipo genérico, que será recebido e retornado
 return f(f(x)) 

proc double(x: int): int = x * 2
echo aplicarDuasVezes(3, double) #Deve retornar 12