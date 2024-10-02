data = [0, 0, 0]
produtos = ['', 0, 0]
compra = []
soma = 0


def menuitens():
    return f'''\n{'--' * 40}\n\t\t\t«  BAR DO ZEZIN  »\n   
    1.  Sanduíche__________________R$ 27,40
    2.  Refrigente_________________R$  8,50
    3.  Cerveja____________________R$  7,10
    4.  Batata frita_______________R$ 14,90\n
    - Informe qual item deseja -> '''


def menuopc():
    return f'''\n{'--' * 40}\n\t* OLÁ {nome}!\t\t\tDATA: {dataatual(data)}\n
    [ 1 ] ADICIONAR ITEM
    [ 2 ] REMOVER ITEM
    [ 3 ] VISUALIZAR PEDIDO
    [ 4 ] FINALIZAR PEDIDO\n
    - Digite uma opção -> '''


def verpedido(itens):
    if len(itens) == 0:
        print('\n\t* NENHUM ITEM FOI ADICIONADO!')
    else:
        for cont, item in enumerate(itens):
            print(f'\n * {cont + 1}º ITEM ')
            print(f'   {item[0]} | QTD: {item[1]} | VALOR UNITÁRIO: {conversor(item[2])} | VALOR TOTAL: {conversor(item[1] * item[2])}')


def dataatual(x):
    if x[0] == 0:
        while x[0] < 1 or x[0] > 31:
            x[0] = int(input(' - Informe o dia atual: '))

        while x[1] < 1 or x[1] > 12:
            x[1] = int(input(' - Informe o número do mês atual: '))

        x[2] = int(input(' - Informe o ano atual: '))
    else:
        return f'{x[0]:02d}/{x[1]:02d}/{x[2]:4d}'


def conversor(dinheiro):
    return 'R$ ' + str('%.2f' % dinheiro).replace('.', ',')


print('\t\tSEJA BEM VINDO!\n')
nome = input(' - Informe seu nome -> ').upper().strip()
dataatual(data)

while True:

    opcmenu = int(input(menuopc()))

    if opcmenu == 1:
        opc = int(input(menuitens()))

        if opc == 1:
            produtos[0] = 'Sanduíche'
            produtos[1] = int(input('\t- Informe a quantidade -> '))
            produtos[2] = 27.4

        elif opc == 2:
            produtos[0] = 'Refrigente'
            produtos[1] = int(input('\t- Informe a quantidade -> '))
            produtos[2] = 8.5

        elif opc == 3:
            produtos[0] = 'Cerveja'
            produtos[1] = int(input('\t- Informe a quantidade -> '))
            produtos[2] = 7.1

        elif opc == 4:
            produtos[0] = 'Batata frita'
            produtos[1] = int(input('\t- Informe a quantidade -> '))
            produtos[2] = 14.9
        else:
            print('\n\t* ITEM INVÁLIDO!')

        compra.extend([produtos[:]])

    elif opcmenu == 2:
        verpedido(compra)

        if len(compra) > 0:
            remover = int(input('\n\t- Informe qual item deseja remover -> '))

            if remover > len(compra) or remover == 0:
                print('\n\t* ITEM INVÁLIDO!')
            else:
                del compra[remover - 1]
                print('\n\t* PRODUTO REMOVIDO COM SUCESSO!')

    elif opcmenu == 3:
        verpedido(compra)

    elif opcmenu == 4:
        break

if len(compra) == 0:
    print(f'\n\t* TENHA UM ÓTIMO DIA {nome}!')
else:
    for i in compra:
        soma += i[1] * i[2]

    print('\n' + '==' * 40)
    print('\t\t\t\t-- RESUMO DO SEU PEDIDO --\n')
    print(f'\tNOME: {nome}\n\tDATA DO PEDIDO: {dataatual(data)}')
    print(f'\tVALOR TOTAL DA COMPRA: {conversor(soma)}')
    verpedido(compra)

print('\n' + '==' * 40)
