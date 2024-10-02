print('        «-»  CALCULAR IMC  «-»')
print('\n' + '=' * 40)
peso = float(input(' - Informe o peso em kg -> '))
altura = float(input('\n - Informe a altura em cm -> '))
imc = (peso / (altura ** 2)) * 10000
print(f'\n * IMC: {imc:.1f} kg/m²')
print('=' * 40)
