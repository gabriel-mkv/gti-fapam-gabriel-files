opc = 1
total = []
produto = []
primeira_interacao = True

while opc > 0:

    escolha = 0
    cont = 0
    print('==' * 20)
    print('\t   RESTAURANTE CAPICHE')
    print('==' * 20)
    print('  Código' + '        Produto' + '        Valor\n')
    print('    1' + '         Macarronada' + '     R$ 23,50')
    print('    2' + '          Feijoada' + '       R$ 25,70')
    print('    3' + '           Salada' + '        R$ 14,90')
    print('    4' + '         Strogonoff' + '      R$ 26,10')
    print('==' * 20)
    print('\t  0 - FINALIZAR PEDIDO')
    print('==' * 20)

    if primeira_interacao is True:
        print('\n * OLÁ, SEJA BEM VINDO!')
        opc = int(input('\n - Informe o código do que deseja: '))
    else:
        print('\n * ÓTIMA ESCOLHA!\n\n [ 1 ] ACRESCENTAR \n [ 2 ] REMOVER')

        while (escolha != 1) and (escolha != 2):
            escolha = int(input('\n - Deseja acrescentar ou remover algum produto? '))

        if escolha == 2:
            if len(produto) > 0:
                produto.pop()
            else:
                print('\n * NÃO HÁ ITENS PARA REMOVER!')
        else:
            opc = int(input('\n - O que você mais deseja? '))

    if opc == 1:
        total.append(23.5)
        produto.append('Macarronada | R$ 23,50')
    elif opc == 2:
        total.append(25.7)
        produto.append('Feijoada | R$ 25,70')
    elif opc == 3:
        total.append(14.9)
        produto.append('Salada | R$ 14,90')
    elif opc == 4:
        total.append(26.1)
        produto.append('Strogonoff | R$ 26,10')
    elif (opc > 4) or (opc < 0):
        print('\n * INFELIZMENTE ESSA OPÇÃO NÃO ESTÁ DISPONÍVEL!')
        break

    if len(produto) > 0:
        print('\n' + '-=' * 35)
        print('\t« REFEIÇÕES ESCOLHIDAS »\n')
        print(f' * PRODUTOS: ')

        while cont < len(produto):
            print(f' - {produto[cont]}')
            cont += 1

        print(f' * VALOR TOTAL: R$ {sum(total)}')
        print('-=' * 35 + '\n')

    primeira_interacao = False

if total == 0:
    print('\n * ESPERAMOS QUE VOLTE NOVAMENTE!')
else:
    print('\n' + '--' * 40)
    print('\t« RESUMO DO SEU PEDIDO »\n')
    x = 0
    while x < len(produto):
        print(f' * {produto[x]}')
        x += 1
    print(f' * VALOR TOTAL: R$ {sum(total)}')
    print(' * BOM APETITE!')
    print('--' * 40)
