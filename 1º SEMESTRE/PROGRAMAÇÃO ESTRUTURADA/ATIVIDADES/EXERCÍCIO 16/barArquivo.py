def abrirMenu():
    menu = open('Bar/menu.txt', 'r')
    prodfinal = []
    print('\n' + '--' * 23)
    print('\t\t\t\tCARDÁPIO')
    print('--' * 23)
    for linha in menu:
        produto = linha.split('-')
        print('%3s - %-20s -%16s' % (produto[0], produto[1], formatReal(produto[2])))
        prodfinal.append([produto[1], produto[2].replace('\n', '')])
    print('--' * 23)
    return prodfinal


def menuPrincipal():
    print('\n' + '--' * 23)
    return int(input('''\t[ 1 ] ADICIONAR ITEM
    [ 2 ] REMOVER ITEM
    [ 3 ] VISUALIZAR PEDIDO
    [ 4 ] ENCERRAR PEDIDO\n
    > Informe a opção que deseja: '''))


def venda(nomeArq, qtd, nome, vlrun):
    arq = open('Bar/Pedidos/' + nomeArq, 'a')
    vlrtotal = str(int(qtd) * float(vlrun))
    arq.write(qtd + '-' + nome + '-' + vlrun + '-' + vlrtotal + '\n')
    arq.close()


def addItem():
    return int(input(' > Escolha o produto: '))


def addQtd():
    return input(' > Informe a quantidade: ')


def retornaDadosCliente(nomeArq):
    dados = nomeArq.split('_')
    dados[0] = dataBr(dados[0])
    dados[1] = dados[1].replace('.txt', '')
    return dados


def consultar(nomeArq):
    comanda = open('Bar/Pedidos/' + nomeArq, 'r')
    cliente = retornaDadosCliente(nomeArq)
    total = 0
    produtos = []
    print('\n' + '--' * 25)
    print('\t\t\t  RESUMO DO PEDIDO')
    print('--' * 25)
    print(' > Cliente: ', cliente[1])
    print(' > Data: ', cliente[0])
    print('--' * 25)
    print('\tPEDIDO:\n')
    for cont, linha in enumerate(comanda):
        prod = linha.split('-')
        print('[%2d] %2s - %-15s - %9s - %9s' % (cont, prod[0], prod[1], formatReal(prod[2]),
                                                 formatReal(prod[3])))
        total += float(prod[3])
        produtos.append([prod[0], prod[1], prod[2], prod[3]])
    print('--' * 25)
    print('TOTAL: %42s' % formatReal(str(total)) + '\n')
    return produtos


def formatReal(vlr):
    return str('R$ %3.2f' % float(vlr)).replace('.', ',')


def dataBr(x):
    dd = x.split('-')
    return dd[2] + '/' + dd[1] + '/' + dd[0]


def dataAm(x):
    dd = x.split('/')
    return dd[2] + '-' + dd[1] + '-' + dd[0]


def inicioVenda():
    print('--' * 23)
    print('\t\t\t  ABERTURA PEDIDO\n\t\t\t\tBAR DEVOLVA!')
    print('--' * 23)
    nome = input('\n > NOME CLIENTE: ').capitalize().strip()
    data = input(' > Data (DD/MM/AAAA): ')
    nomeArq = dataAm(data) + '_' + nome + '.txt'
    arq = open('Bar/Pedidos/' + nomeArq, 'w')
    arq.close()
    return nomeArq


def geraArquivo(lista, inicio):
    arq = open('Bar/Pedidos/' + inicio, 'w')
    for linha in lista:
        vlrtotal = str(int(linha[0]) * float(linha[2]))
        arq.write(linha[0] + '-' + linha[1] + '-' + linha[2] + '-' + vlrtotal + '\n')
    arq.close()


def removerProd(lista, inicio):
    item = int(input(' > Informe o código do item a ser removido: '))
    del lista[item]
    geraArquivo(lista, inicio)


while True:
    inicio = inicioVenda()

    while True:
        opcmenu = menuPrincipal()

        if opcmenu == 1:
            menu = abrirMenu()
            opcao = addItem()

            if opcao > 0:
                if opcao <= len(menu):
                    qtd = addQtd()
                    venda = (inicio, qtd, menu[opcao - 1][0], menu[opcao - 1][1])
                else:
                    print(' OPÇÃO INVÁLIDA!')

        if opcmenu == 2:
            lista = consultar(inicio)
            removerProd(lista, inicio)

        elif opcmenu == 3:
            lista = consultar(inicio)

        elif opcmenu == 4:
            print('--' * 25)
            print('\t\t\tPEDIDO ENCERRADO')
            consultar(inicio)
            break
    opvenda = input(' > Deseja adicionar outra venda? [S / N]: ')
    if opvenda.upper() == 'N':
        break

print('FIM')
