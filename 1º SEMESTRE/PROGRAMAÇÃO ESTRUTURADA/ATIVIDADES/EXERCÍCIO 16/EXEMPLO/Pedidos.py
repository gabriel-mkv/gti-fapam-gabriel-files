nome=input("Digite seu Nome:\n")
arq = open("Pedidos/pedido-"+nome+".txt","w")
while True:
    menu = open("Menu/menu.txt","r")
    listaMenu=[]
    cont=0
    for linha in menu.readlines():
        print(cont,end="")
        print('-',linha, end="")
        listaMenu.append(linha.replace("\n",''))
        cont+=1
    menu.close()
    item=input("\nQual item deseja adicionar - Digite S para Sair?\n")
    if item=="S":
        break
    arq.write(listaMenu[int(item)]+"\n")
arq.close()
