print(' == Calculadora ==\n')
n1 = float(input(' - Informe o 1º número: '))
opc = input(' - Qual operação será realizada [+, -, *, /]: ')       
n2 = float(input(' - Informe o 2º número: '))
resultado = 0

if (opc == '+'):
    resultado = (n1 + n2)  
elif (opc == '-'):
    resultado = (n1 - n2)
elif (opc == '*'):
    resultado = (n1 * n2)
elif (opc == '/'):
    if (n2 == 0):
        print('\n * Um número não pode ser dividido por zero!')
        quit()
    else:
        resultado = (n1 / n2)
else:
    print('\n * Digite uma operação válida!')
    quit()
    
print('\n O resultado é %.2f!' % resultado)
