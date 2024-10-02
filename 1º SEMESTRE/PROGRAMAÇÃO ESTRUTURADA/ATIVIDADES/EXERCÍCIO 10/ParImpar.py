print('\n\t« NÚMEROS PARES OU ÍMPARES »\n')
opc = input(' - Digite P para pares ou I para ímpares: ').upper()
n = int(input(' - Informe até onde deseja contar: '))
cont = 0

while cont <= n:
    if (opc == 'P'):   
        if (cont % 2 == 0):
            print(f'\n\t| {cont:4d} |')      
    elif (opc == 'I'):
        if (cont % 2 == 1):
            print(f'\n\t| {cont:4d} |')
    cont += 1
