print('=' * 50)
print('   Bem-vindo!')
valor = float(input('\n - Informe o valor da compra: '))
dinheiro = float(input(' - Informe a valor em dinheiro: '))
troco = (dinheiro - valor)
trocoReal = str('%.2f' % troco).replace('.', ',')
print('\n   Analisando o seu troco...\n')
print(' * O valor do troco será R$ %s!' % trocoReal)
print('=' * 50)
