opc = 1
total = 0
produto = ''
primeira_interacao = True

while opc > 0:

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

    if primeira_interacao == True:
        print('\n * OLÁ, SEJA BEM VINDO!')
        opc = int(input('\n - Informe o código do que deseja: '))
    else:
        print('\n * ÓTIMA ESCOLHA!')
        opc = int(input('\n - O que você mais deseja? '))

    if opc == 1:
        total = total + 23.5
        produto = produto + 'Macarronada - R$ 23,50 | '
    elif opc == 2:
        total = total + 25.7
        produto = produto + 'Feijoada - R$ 25,70 | '
    elif opc == 3:
        total = total + 14.9
        produto = produto + 'Salada - R$ 14,90 | '
    elif opc == 4:
        total = total + 26.1
        produto = produto + 'Strogonoff - R$ 26,10 | '
    elif (opc > 4) or (opc < 0):
        print('\n * INFELIZMENTE ESSA OPÇÃO NÃO ESTÁ DISPONÍVEL!')
        break

    primeira_interacao = False
    
if (total == 0):
    print('\n * ESPERAMOS QUE VOLTE NOVAMENTE!')
else:
    totalReal = str('%.2f' % total).replace('.', ',')
    print('\n' + '--' * 40)    
    print('\t« RESUMO DO SEU PEDIDO »\n')
    print(f' * PRODUTOS: {produto}')
    print(f' * VALOR TOTAL: R$ {totalReal}')
    print(' * BOM APETITE!')
    print('--' * 40)  
