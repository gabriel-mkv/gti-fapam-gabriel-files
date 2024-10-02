def conversor(real):
    return 'R$ ' + str('%0.2f' % real).replace('.', ',')


print(' CONVERSOR REAL '.center(30, '='))
valor = float(input('\n - Informe um valor -> '))
print(f' * O valor {valor} convertido em reais é {conversor(valor)}!')
