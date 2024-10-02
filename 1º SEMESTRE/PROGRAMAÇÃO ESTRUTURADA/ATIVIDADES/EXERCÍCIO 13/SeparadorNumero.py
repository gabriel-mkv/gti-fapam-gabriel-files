lista = [9, 8, 7, 12, 0, 13, 21, 35, 6, 11, 1]
print('\t « AGRUPADOR DE NÚMEROS »\n')
print(' - A lista possui os seguintes itens: \n')

for cont, item in enumerate(lista):
    if (cont + 1) < len(lista):
        print(f'{item}', end=' - ')
    else:
        print(item)

print('\n * PARES:', end=' | ')

for item in lista:
    if item % 2 == 0:
        print(f'{item}', end=' | ')

print('\n * ÍMPARES:', end=' | ')

for item in lista:
    if item % 2 == 1:
        print(f'{item}', end=' | ')
