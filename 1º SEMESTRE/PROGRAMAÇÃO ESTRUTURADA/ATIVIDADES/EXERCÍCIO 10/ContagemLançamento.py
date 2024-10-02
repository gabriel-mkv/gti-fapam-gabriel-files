from time import sleep
print('==' * 40 + '\n')
print(' | INICIANDO CONTAGEM PARA LANÇAMENTO DO FOGUETE! | ')
n = 10
while (n >= 0):
    print('\n\t<  %3d  >' % n)
    sleep(1)
    n -= 1
print('\n        < FOGO! >')
print('\n' + '==' * 40)
