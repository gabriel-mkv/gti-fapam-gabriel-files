produto = ['', 0]
data = [0, 0, 0]
compra = []
remover = 0
soma = 0


def menuopc():
    return (f'''{'==' * 23 + ' ' + dataatual(data)} 
    [ 1 ] ADICIONAR PRODUTO
    [ 2 ] REMOVER PRODUTO
    [ 3 ] CONSULTAR LISTA
    [ 4 ] FINALIZAR COMPRA\n
    - Qual opção deseja? -> ''')


def adicionar(auxiliar, lista):
    auxiliar[0] = input('\n - Informe o produto a ser adicionado -> ').capitalize().strip()
    auxiliar[1] = int(input(' - Informe a quantidade -> '))
    lista.extend([auxiliar[:]])
    print('\n * PRODUTO ADICIONADO COM SUCESSO!')


def retirar(indice):
    consultar(compra)
    if compra:
        indice = int(input('\n - Qual o indice do item que deseja remover? -> '))

        if ((indice - 1) <= len(compra)) and (indice != 0):
            del compra[indice - 1]
            print('\n * PRODUTO REMOVIDO COM SUCESSO!')
        else:
            print('\n * VALOR INVÁLIDO!')


def consultar(lista):
    if len(lista) > 0:
        for cont, item in enumerate(lista):
            print(f'\n {cont + 1}º ITEM:')
            print(f' * {item[0]} / QTD: {item[1]}')
    else:
        print('\n * NENHUM ITEM FOI ADICIONADO!')


def dataatual(x):
    if x[0] == 0:
        while x[0] < 1 or x[0] > 31:
            x[0] = int(input(' - Informe o dia atual: '))

        while x[1] < 1 or x[1] > 12:
            x[1] = int(input(' - Informe o número do mês atual: '))

        x[2] = int(input(' - Informe o ano atual: '))
    else:
        return f'{x[0]:02d}/{x[1]:02d}/{x[2]:4d}'


print('\t\tSEJA BEM VINDO!\n')
dataatual(data)

while True:

    opc = int(input(menuopc()))

    if opc == 1:
        adicionar(produto, compra)

    elif opc == 2:
        retirar(remover)

    elif opc == 3:
        consultar(compra)

    elif opc == 4:
        break

    else:
        print('\n * OPÇÃO INVÁLIDA!')

for i in compra:
    soma += i[1]

arq = open('Exercício 1.txt', 'w')
arq.write(' --> DATA DO PEDIDO: ' + dataatual(data) + '\n')

for contador, itens in enumerate(compra):
    arq.write(f'\n {contador + 1}º ITEM:\n')
    arq.write(f' * {itens[0]} / QTD: {itens[1]}\n')

arq.write('\n --> QUANTIDADE TOTAL DE ITENS: ' + str(soma))
arq.close()
