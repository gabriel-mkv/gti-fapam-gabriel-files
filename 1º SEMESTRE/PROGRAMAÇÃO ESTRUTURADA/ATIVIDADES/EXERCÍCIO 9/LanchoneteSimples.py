print('\n' + '=' * 50)
print(' ' * 20 + 'LANCHONETE')
print('=' * 50)
print((' ' * 5) + 'Código' + (' ' * 10) + 'Descrição' + (' ' * 9) + 'Valor')
print((' ' * 7) + '1' + (' ' * 14) + 'Coxinha' + (' ' * 9) + 'R$ 4,00')
print((' ' * 7) + '2' + (' ' * 12) + 'Enroladinho' + (' ' * 7) + 'R$ 5,50')
print((' ' * 7) + '3' + (' ' * 14) + 'Pastel' + (' ' * 10) + 'R$ 6,35')
print((' ' * 7) + '4' + (' ' * 14) + 'Empada' + (' ' * 10) + 'R$ 3,70')
print('=' * 50)

total = float(0)

print('\n * Olá, tudo bem?')
codSalgado = int(input(' - Informe o código do salgado desejado: '))

if (codSalgado == 1):
    total = total + 4
    produto = '1 - Coxinha '
elif (codSalgado == 2):
    total = total + 5.5
    produto = '1 - Enroladinho '
elif (codSalgado == 3):
    total = total + 6.35
    produto = '1 - Pastel '
elif (codSalgado == 4):
    total = total + 3.7
    produto = '1 - Empada '
else:
    print('\n * Sinto muito, essa opção não está disponível!')
    quit()
    
print(' * Ótima escolha!')
opc = input(' * Deseja pedir uma bebida? (S/N) ').upper()

if (opc[0] == 'S'):
    print('\n' + '=' * 50)
    print((' ' * 5) + 'Código' + (' ' * 10) + 'Descrição' + (' ' * 7) + 'Valor')
    print((' ' * 7) + '5' + (' ' * 11) + 'Suco Natural' + (' ' * 5) + 'R$ 4,60')
    print((' ' * 7) + '6' + (' ' * 11) + 'Refrigerante' + (' ' * 5) + 'R$ 5,00')
    print((' ' * 7) + '7' + (' ' * 15) + 'Café' + (' ' * 9) + 'R$ 3,25')
    print((' ' * 7) + '8' + (' ' * 12) + 'Energético' + (' ' * 6) + 'R$ 7,00')
    print('=' * 50)
        
    codBebida = int(input('\n - Informe o código da bebida desejada: '))

    if (codBebida == 5):
        total = total + 4.6
        produto = produto + '| 1 - Suco Natural'
    elif (codBebida == 6):
        total = total + 5
        produto = produto + '| 1 - Refrigerante'
    elif (codBebida == 7):
        total = total + 3.25
        produto = produto + '| 1 - Café'
    elif (codBebida == 8):
        total = total + 7
        produto = produto + '| 1 - Energético'
    else:
        print('\n * Sinto muito, essa opção não está disponível!')

total = str('%.2f' % total).replace('.', ',')
print('\n' + '*' * 45)
print(' « RESUMO DO PEDIDO »')
print('\n ITENS : %s' % produto)
print(' VALOR TOTAL: R$ %s' % total)
print('*' * 45)
