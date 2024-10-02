print('\n\t « VERIFICADOR DE NÚMERO PRIMO »')

repetir = 1

while repetir == 1:
    
    n = int(input('\n - Informe o número que deseja verificar -> '))
    cont = 3
    primo = True
    
    if (n == 2) or (n == 3):
        print('\n * ESSE NÚMERO É PRIMO!')
        
    elif (n <= 1):
        print('\n * ESSE NÚMERO NÃO É PRIMO!')
        
    elif (n % 2 != 0) and (n % 3 != 0):    
        while cont <= n - 2:
            if (n % cont == 0): 
                primo = False
                break
            cont += 2
                
        if primo == True:
            print('\n * ESSE NÚMERO É PRIMO!')
        else:
            print('\n * ESSE NÚMERO NÃO É PRIMO!')

    else:
        print('\n * ESSE NÚMERO NÃO É PRIMO!')

    repetir = int(input('\n - Deseja verificar outro número? (0 - NÃO / 1 - SIM) '))
