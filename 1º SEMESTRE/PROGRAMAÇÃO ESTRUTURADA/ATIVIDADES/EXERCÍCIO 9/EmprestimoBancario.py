print(' « Empréstimo Bancário »')
print('=' * 60)
valorCasa = float(input('\n - Informe o valor da casa: '))
salario = float(input(' - Informe o seu salário: '))
qtdAnos = int(input(' - Informe a quantidade de anos a pagar: '))
valorPrest = (valorCasa / (qtdAnos * 12))

if (valorPrest <= (salario * 1.3)):
    print('\n * Parabéns!')
    print(' * Seu empréstimo foi aprovado com sucesso!')
else:
    print('\n * Sentimos muito, seu empréstimo não foi aprovado!')
print('\n' + '=' * 60)
