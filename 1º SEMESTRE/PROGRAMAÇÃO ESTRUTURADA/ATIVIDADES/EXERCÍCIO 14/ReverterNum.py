def reverso(num):
    num = str(num)
    return num[::-1]


n = int(input(' - Informe um número inteiro -> '))
print(f'\n * O número {n} inverso é {reverso(n)}!')
