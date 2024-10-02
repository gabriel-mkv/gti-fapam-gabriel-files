lista1 = []
lista2 = []
lista3 = []
x = 0

print('\n\t DADOS DA 1º LISTA:')
print('-=' * 15 + '\n')

while x < 5:
    lista1.append(int(input(f' - {x + 1}º item: ')))
    x += 1

print('\n\t DADOS DA 2º LISTA:')
print('-=' * 15 + '\n')

while x < 10:
    lista2.append(int(input(f' - {x + 1}º item: ')))
    x += 1

print('\n\t ELEMENTOS DA LISTA COMBINADA:')
print('-=' * 15 + '\n')

lista3 = list(set(lista1 + lista2))

x = 0

while x < len(lista3):
    if x < 9:
        print(f' - {lista3[x]}')
    x += 1
