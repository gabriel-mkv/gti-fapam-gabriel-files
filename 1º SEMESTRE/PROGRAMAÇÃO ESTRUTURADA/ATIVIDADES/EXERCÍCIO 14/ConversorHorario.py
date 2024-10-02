def conversor(a, b):
    if a > 12:
        a = a - 12
        return f'{a:02d}:{b:02d} P.M'
    else:
        return f'{a:02d}:{b:02d} A.M'


hora = -1
minuto = -1

while hora < 0 or hora > 23:
    hora = int(input(' - Informe as horas: '))

while minuto < 0 or minuto > 59:
    minuto = int(input(' - Informe os minutos: '))

print(f'\n * Formato 24 horas: {hora:02d}:{minuto:02d}')
print(f' * Formato 12 horas: {conversor(hora, minuto)}')
