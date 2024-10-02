ordenada = []
total = 0


def tabela():
    return f'''\n{'--' * 30}
    01 - PENSAMENTO COMPUTACIONAL
    02 - FUNDAMENTOS DE SISTEMA DE INFORMAÇÃO
    03 - BANCO DE DADOS I
    04 - SISTEMAS OPERACIONAIS E VIRTUALIZAÇÃO
    05 - PROGRAMAÇÃO ESTRUTURADA\n
     0 - FINALIZAR A VOTAÇÃO\n
    * Digite o seu voto -> '''


votos = [[0, 'PENSAMENTO COMPUTACIONAL'],
         [0, 'FUNDAMENTOS DE SISTEMA DE INFORMAÇÃO'],
         [0, 'BANCO DE DADOS I'],
         [0, 'SISTEMAS OPERACIONAIS E VIRTUALIZAÇÃO'],
         [0, 'PROGRAMAÇÃO ESTRUTURADA']]

while True:

    opc = int(input(tabela()))

    if opc == 1:
        votos[0][0] += 1
    elif opc == 2:
        votos[1][0] += 1
    elif opc == 3:
        votos[2][0] += 1
    elif opc == 4:
        votos[3][0] += 1
    elif opc == 5:
        votos[4][0] += 1
    elif opc == 0:
        break

for i in range(0, 5):
    ordenada.append(votos[votos.index(max(votos))])
    del votos[votos.index(max(votos))]

print('\n' + '==' * 30)

for cont, item in enumerate(ordenada):
    print(f'\n\t{cont + 1}º LUGAR - {item[1]} | QTD DE VOTOS: {item[0]}')
    total += item[0]
print(f'\n\tTOTAL DE VOTANTES: {total}')
print('==' * 30)
