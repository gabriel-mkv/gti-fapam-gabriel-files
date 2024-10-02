produto = []
opcmenu = 0
opc = 0
valor = []

menusanduiche = '\n « SANDUÍCHES »\n'
menusanduiche += '\n 1 . X-Mega Man________________R$ 18,80\n'
menusanduiche += ' 2 . X-Tudo____________________R$ 14,99\n'
menusanduiche += ' 3 . X-Egg_____________________R$ 9,50\n'
menusanduiche += ' 4 . X-Salada__________________R$ 10,00\n'
menusanduiche += '\n 0 - RETORNAR AO MENU DE OPÇÕES\n'
menusanduiche += '\n - Informe o que deseja -> '

menubebida = '\n « BEBIDAS »\n'
menubebida += '\n 1 . Refrigerante________________R$ 10,20\n'
menubebida += ' 2 . Suco Natural________________R$ 5,20\n'
menubebida += ' 3 . Energético__________________R$ 8,80\n'
menubebida += ' 4 . Água Mineral________________R$ 7,00\n'
menubebida += '\n 0 - RETORNAR AO MENU DE OPÇÕES\n'
menubebida += '\n - Informe o que deseja -> '

menuopcoes = '\n [ 1 ] ADICIONAR SANDUÍCHE\n'
menuopcoes += ' [ 2 ] ADICIONAR BEBIDA\n'
menuopcoes += ' [ 3 ] REMOVER ITEM\n'
menuopcoes += ' [ 4 ] VISUALIZAR PEDIDO\n'
menuopcoes += ' [ 5 ] ENCERRAR COMPRA\n'
menuopcoes += '\n - Informe o que deseja -> '

print(f'\t{' HAMBURGUERIA RECEBA ':=^40}\n')
print(' * SEJA BEM-VINDO!')

while True:

    opcmenu = int(input(menuopcoes))

    if opcmenu == 1:

        opc = int(input(menusanduiche))

        if opc == 1:
            produto.append('X-Mega Man   ')
            valor.append(18.80)
        elif opc == 2:
            produto.append('X-Tudo       ')
            valor.append(14.99)
        elif opc == 3:
            produto.append('X-Egg        ')
            valor.append(9.50)
        elif opc == 4:
            produto.append('X-Salada     ')
            valor.append(10.00)

    elif opcmenu == 2:

        opc = int(input(menubebida))

        if opc == 1:
            produto.append('Refrigerante ')
            valor.append(10.20)
        elif opc == 2:
            produto.append('Suco Natural ')
            valor.append(5.20)
        elif opc == 3:
            produto.append('Energético   ')
            valor.append(8.80)
        elif opc == 4:
            produto.append('Água Mineral ')
            valor.append(7.00)

    elif opcmenu == 3:

        print('\n' + '-=' * 20)
        print('\t« SEU PEDIDO »\n')

        if len(produto) > 0:
            cont = 0

            while cont < len(produto):
                print(f'{cont + 1} - {produto[cont]}  | R$ %s' % str('%.2f' % valor[cont]).replace('.', ','))
                cont += 1

            print(f'\n * VALOR: R$ {str('%.2f' % sum(valor)).replace('.', ',')}')
            print('-=' * 20)
            remover = int(input('\n - Informe número do item que deseja remover -> '))

            if 0 < remover <= len(produto):
                del produto[remover - 1]
                del valor[remover - 1]
            else:
                print('\n * OPÇÃO NÃO DISPONÍVEL!')

        else:
            print(' * VOCÊ AINDA NÃO ESCOLHEU NENHUM ITEM!')
            print('-=' * 20)

    elif opcmenu == 4:

        print('\n' + '-=' * 20)
        print('\t« SEU PEDIDO »\n')

        if len(produto) > 0:
            cont = 0

            while cont < len(produto):
                print(f' 1 - {produto[cont]}  | R$ %s' % str('%.2f' % valor[cont]).replace('.', ','))
                cont += 1

            print(f'\n * VALOR: R$ {str('%.2f' % sum(valor)).replace('.', ',')}')
        else:
            print(' * VOCÊ AINDA NÃO ESCOLHEU NENHUM ITEM!')
        print('-=' * 20)

    elif opcmenu == 5:

        break

print('\n' + '-=' * 20)
print('\t « RESUMO DO PEDIDO »\n')
cont = 0

while cont < len(produto):
    print(f' 1 - {produto[cont]}  | R$ %s' % str('%.2f' % valor[cont]).replace('.', ','))
    cont += 1

print(f'\n * VALOR TOTAL: R$ {str('%.2f' % sum(valor)).replace('.', ',')}')
print('-=' * 20)
