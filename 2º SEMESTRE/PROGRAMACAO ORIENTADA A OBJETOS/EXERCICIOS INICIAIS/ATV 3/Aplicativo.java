public class Aplicativo {

    public static void main(String[] args) {

        Produto Brincos = new Produto("Brincos", 45.99);
        Produto Colar = new Produto("Colar", 99.99);

        Brincos.adicionarEstoque(85);
        Colar.adicionarEstoque(44);
        
        Colar.venderProduto(10);

        System.out.println(Brincos.exibirProduto() + "\n");
        System.out.println(Colar.exibirProduto());
    }
}
