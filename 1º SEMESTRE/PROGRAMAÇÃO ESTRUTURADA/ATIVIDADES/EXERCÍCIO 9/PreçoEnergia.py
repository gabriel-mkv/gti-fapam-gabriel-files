print('\n « Tipos de instalações »')
print(' * Residencial (R)\n * Comercial (C)\n * Indutrial (I)')
kwh = float(input('\n - Digite a quantidade de kWh consumida: '))
tipo = input(' - Informe o tipo de instalação (R, C ou I): ').upper()

valor = 0

if (tipo[0] == 'R'):
    if (kwh <= 500):
        valor = (kwh * 0.4)
    else:
        valor = (kwh * 0.65)
elif (tipo[0] == 'C'):
    if (kwh <= 1000):
        valor = (kwh * 0.55)
    else:
        valor = (kwh * 0.60)
elif (tipo[0] == 'I'):
    if (kwh <= 5000):
        valor = (kwh * 0.55)
    else:
        valor = (kwh * 0.60)
else:
    print(' * Tipo de instalação inválida!')
    quit()

valor = str('%.2f' % valor).replace('.', ',')    
print('\n * O preço a pagar será R$ %s!' % valor)
