print(' « Calculadora de Notas »\n')
print(' * ATENÇÃO! O valor das notas deve ser entre 0 e 25! *\n')
nota1 = float(input(' - Informe a 1º nota: '))
nota2 = float(input(' - Informe a 2º nota: '))
nota3 = float(input(' - Informe a 3º nota: '))
nota4 = float(input(' - Informe a 4º nota: '))

if (nota1 < 0 or nota1 > 25) or (nota2 < 0 or nota2 > 25):
    print('\n * VALOR INVÁLIDO!')
elif (nota3 < 0 or nota3 > 25) or (nota4 < 0 or nota4 > 25):
    print('\n * VALOR INVÁLIDO!')
else:    
    total = nota1 + nota2 + nota3 + nota4
    print('\n * A nota total foi %.2f!' % total)
    
    if (total < 40):
        print(' * Infelizmente o aluno foi reprovado!')
    elif (total >= 40) and (total <= 59):
        print(' * O aluno está de recuperação!')
    elif (total >= 60) and (total <= 79):
        print(' * O aluno foi aprovado!')
    else:
        print(' * Muito bem!')
        print(' * Aluno aprovado com excelência!')
