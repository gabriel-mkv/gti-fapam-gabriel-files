def quantidade(num):
    num = str(num)
    return len(num)


n = int(input(' - Informe um número inteiro -> '))
print(f'\n * O número {n} possui {quantidade(n)} dígitos!')
