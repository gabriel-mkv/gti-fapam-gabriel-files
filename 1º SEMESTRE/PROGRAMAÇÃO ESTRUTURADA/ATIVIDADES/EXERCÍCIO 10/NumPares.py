print('\n\t« NÚMEROS PARES »\n')
n = int(input(' - Informe até onde deseja contar: '))
cont = 0

while cont <= n:
    if (cont % 2 == 0):
            print(f'\n\t| {cont:4d} |')
    cont += 1
