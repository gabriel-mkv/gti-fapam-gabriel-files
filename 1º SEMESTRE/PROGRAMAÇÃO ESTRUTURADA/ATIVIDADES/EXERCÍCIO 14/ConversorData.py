def americano(anos, meses, dias):
    return f'{anos}-{meses}-{dias}'


def brasileiro(dias, meses, anos):
    return f'{dias}/{meses}/{anos}'


opc = ''

dia = int(input(' - Informe o dia do mês: '))
mes = int(input(' - Informe o número do mês: '))
ano = int(input(' - Informe o ano: '))
print('\n\t[ B ] FORMATO BRASILEIRO\n\t[ A ] FORMATO AMERICANO\n')

while opc != 'A' and opc != 'B':
    opc = input(' - Qual formato deseja? -> ').upper()

if opc == 'A':
    print('\n * DATA AMERICANA: ', americano(ano, mes, dia))
else:
    print('\n * DATA BRASILEIRA: ', brasileiro(dia, mes, ano))
