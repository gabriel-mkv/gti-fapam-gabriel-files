lista = []
maior = 0
menor = 0
remover = 0
menu = '\n' + '==' * 20
menu += '\n\n [ 1 ] ADICIONAR\n [ 2 ] REMOVER \n [ 3 ] VER ITENS\n [ 4 ] SAIR'
menu += '\n\n - Informe o que deseja -> '

while True:

    for cont, item in enumerate(lista):
        if item > maior or cont == 0:
            maior = item
        if item < menor or cont == 0:
            menor = item

    opc = int(input(menu))

    if opc == 1:

        lista.append(int(input('\n - Informe um número: ')))

    elif opc == 2:

        for cont, item in enumerate(lista):
            print(f' * {cont + 1}º posição | Item: {item}')

        if len(lista) > 0:
            remover = int(input('\n - Informe qual deseja remover -> '))

            if (remover <= len(lista)) and (remover != 0):
                del lista[remover - 1]
            else:
                print('\n * Valor inválido!')
        else:
            print('\n * Não há nenhum número na lista!')

    elif opc == 3:

        if len(lista) > 0:
            for cont, item in enumerate(lista):
                print(f' * {cont + 1}º posição | Item: {item}')
        else:
            print('\n * Não há nenhum número na lista!')

    elif opc == 4:
        break

print('\n' + '==' * 20 + '\n')

if len(lista) == 0:
    print(' * NENHUM ITEM FOI ADICIONADO!')
else:
    print('\t« RESULTADOS FINAIS »\n')

    for cont, item in enumerate(lista):
        print(f' * {cont + 1}º posisão | Item: {item}')

    print(f'\n * MAIOR NÚMERO: {maior}')
    print(f' * MENOR NÚMERO: {menor}')
    print(f' * MÉDIA DOS NÚMEROS: {sum(lista) / len(lista):.1f}')
    print('\n' + '==' * 20)
