produto = ['', 0, 0]
compra = []
qtd = 0
valor = 0
menu = '\n' + '==' * 20
menu += '\n\n [ 1 ] ADICIONAR ITEM \n [ 2 ] REMOVER ITEM \n [ 3 ] EXIBIR LISTA\n [ 4 ] FINALIZAR'
menu += '\n\n - Informe o que deseja -> '

while True:

    opc = int(input(menu))

    if opc == 1:
        produto[0] = input(' - Informe qual o produto -> ').capitalize().strip()
        produto[1] = int(input(' - Informe qual a quantidade -> '))
        produto[2] = float(input(' - Informe qual o preço unitário -> R$ '))
        compra.extend([produto[:]])

    elif opc == 2:
        if len(compra) > 0:
            for cont, item in enumerate(compra):
                print('--' * 20)
                print(f' {cont + 1}º ITEM:\n')
                print(' * Produto: %s' % item[0])
                print(' * Quantidade: %d' % item[1])
                print(' * Preço unitário: R$ %5.2f' % item[2])

            remover = int(input('\n - Informe qual deseja remover -> '))

            if (remover <= len(compra)) and (remover != 0):
                del compra[remover - 1]
            else:
                print('\n * Valor inválido!')
        else:
            print('\n * Não há nenhum item na compra!')

    elif opc == 3:
        if len(compra) > 0:
            for cont, item in enumerate(compra):
                print('--' * 20)
                print(f' {cont + 1}º ITEM:\n')
                print(' * Produto: %s' % item[0])
                print(' * Quantidade: %d' % item[1])
                print(' * Preço unitário: R$ %5.2f' % item[2])
        else:
            print('\n * Não há nenhum item na compra!')

    elif opc == 4:
        break

print('\n' + '==' * 20 + '\n')

if len(compra) == 0:
    print(' * NENHUM ITEM FOI ADICIONADO!')
else:
    print('\t« RESUMO DA COMPRA »\n')

    for cont, item in enumerate(compra):
        print(f' {cont + 1}º ITEM:\n')
        print(' * Produto: %s' % item[0])
        print(' * Quantidade: %d' % item[1])
        print(' * Preço unitário: R$ %5.2f' % item[2])
        print('--' * 20)
        qtd += item[1]
        valor += item[2] * item[1]

    print('\n * QUANTIDADE TOTAL DE ITENS: %d' % qtd)
    print(' * VALOR TOTAL DA COMPRA: R$ %s' % str('%.2f' % valor).replace('.', ','))
    print('\n' + '==' * 20)
