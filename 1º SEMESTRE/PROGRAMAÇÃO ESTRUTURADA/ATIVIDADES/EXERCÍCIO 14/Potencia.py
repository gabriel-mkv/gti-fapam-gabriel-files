def potencia(a, b):
    total = 1
    for cont in range(0, b):
        total *= a
    return total


print(' CALCULADORA DE POTÊNCIA '.center(50, '-'))
base = int(input('\n - Informe a base (inteiro): '))
expoente = int(input(' - Informe o expoente (inteiro): '))
print(f'\n * BASE: {base}\n * EXPOENTE: {expoente}\n * RESULTADO: {potencia(base, expoente)}')
