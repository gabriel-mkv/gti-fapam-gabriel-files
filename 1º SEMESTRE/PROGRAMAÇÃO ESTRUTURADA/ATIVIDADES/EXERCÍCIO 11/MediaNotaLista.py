nota = []
soma = 0
x = 0
print('-=' * 20)
print('\t\tCALCULADORA DE MÉDIA')
print('-=' * 20 + '\n')

while x < 5:
    nota.append(float(input(f' - Informe a {x + 1}º nota: ')))
    soma += nota[x]
    x += 1

print('==' * 20)
print('\t\tRESUMO DAS NOTAS:')
print('==' * 20)

while x < len(nota) + 5:
    print(f' * {x - 4}º nota: {nota[x - 5]:.2f}')
    x += 1

print(' * A média foi: %.2f ' % (soma/5))
