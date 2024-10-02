print('\n\t« NÚMEROS PARES OU ÍMPARES »\n')
n = int(input(' - Informe até onde deseja contar: '))
opc = input(' - Digite P para pares ou I para ímpares: ').upper()
cont = 0

while cont <= n:
    while (opc != 'P') and (opc != 'I'):
        opc = input(' - Por favor, informe P ou I: ').upper()
    if (opc == 'P'):   
        if (cont % 2 == 0):
            print(f'\n\t| {cont:4d} |')      
    elif (opc == 'I'):
        if (cont % 2 == 1):
            print(f'\n\t| {cont:4d} |')
    cont += 1
