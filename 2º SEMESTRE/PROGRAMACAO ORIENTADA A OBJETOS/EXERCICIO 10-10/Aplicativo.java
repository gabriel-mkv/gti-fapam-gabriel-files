import java.util.Scanner;

public class Aplicativo {
    public static void main(String[] args) {
        /* Instancia os objetos */
        Scanner ent = new Scanner(System.in);

        Fornecedor toyota = new Fornecedor("Toyota", "57675244000187", "32999992222");
        Produto carro = new Produto("Corolla", 123400.15, 20, toyota);

        Fornecedor motorola = new Fornecedor("Motorola", "87989766000123", "41999993333");
        Produto celular = new Produto("Motorola Moto G55 5G", 1799.19, 135, motorola);

        Fornecedor redragon = new Fornecedor("Redragon", "768123945000135", "45999995555");
        Produto mouse = new Produto("Redragon Cobra", 99.99, 567, redragon);
        
        /* Imprime o relatório com as informações */
        System.out.println("--- RELATÓRIO DE PRODUTOS ---\n");
        System.out.println("- Carro:\n");
        System.out.println("> Nome: " + carro.getNome());
        System.out.println("> Preço: R$ " + carro.getPreco());
        System.out.println("> Quantidade: " + carro.getQuantidade());
        System.out.println("> Valor total em dólar: " + Conversor.converterParaDolar(carro, 5.58));
        System.out.println("> Valor com 15% de desconto: " + Conversor.exibirComDesconto(carro, 15));

        System.out.println("\n- Celular:\n");
        System.out.println("> Nome: " + celular.getNome());
        System.out.println("> Preço: R$ " + celular.getPreco());
        System.out.println("> Quantidade: " + celular.getQuantidade());
        System.out.println("> Valor total em dólar: " + Conversor.converterParaDolar(celular, 5.58));
        System.out.println("> Valor com 20% de desconto: " + Conversor.exibirComDesconto(celular, 20));

        System.out.println("\n- Mouse:\n");
        System.out.println("> Nome: " + mouse.getNome());
        System.out.println("> Preço: R$ " + mouse.getPreco());
        System.out.println("> Quantidade: " + mouse.getQuantidade());
        System.out.println("> Valor total em dólar: " + Conversor.converterParaDolar(mouse, 5.58));
        System.out.println("> Valor com 30% de desconto: " + Conversor.exibirComDesconto(mouse, 30));
        System.out.println("-----------------------------");

        /* Pede ao usuários os valores que serão inseridos */
        System.out.print("\n- Informe o números de carro que deseja inserir no sistema: ");
        carro.ajustaQtd(ent.nextInt());

        System.out.print("\n- Informe quantos celulares deseja inserir no sistema: ");
        celular.ajustaQtd(ent.nextInt());

        System.out.println("\n- Nesta quinta-feira foram vendido 55 mouses!");
        mouse.ajustaQtd(-55);
        
        /* Imprime o relatório atualizado com as informações */
        System.out.println("\n--- RELATÓRIO ATUALIZADO DE PRODUTOS ---\n");
        System.out.println("- Carro:\n");
        System.out.println("> Nome: " + carro.getNome());
        System.out.println("> Preço: R$ " + carro.getPreco());
        System.out.println("> Quantidade: " + carro.getQuantidade());
        System.out.println("> Valor total em dólar: " + Conversor.converterParaDolar(carro, 5.58));
        System.out.println("> Valor com 15% de desconto: " + Conversor.exibirComDesconto(carro, 15));

        System.out.println("\n- Celular:\n");
        System.out.println("> Nome: " + celular.getNome());
        System.out.println("> Preço: R$ " + celular.getPreco());
        System.out.println("> Quantidade: " + celular.getQuantidade());
        System.out.println("> Valor total em dólar: " + Conversor.converterParaDolar(celular, 5.58));
        System.out.println("> Valor com 20% de desconto: " + Conversor.exibirComDesconto(celular, 20));

        System.out.println("\n- Mouse:\n");
        System.out.println("> Nome: " + mouse.getNome());
        System.out.println("> Preço: R$ " + mouse.getPreco());
        System.out.println("> Quantidade: " + mouse.getQuantidade());
        System.out.println("> Valor total em dólar: " + Conversor.converterParaDolar(mouse, 5.58));
        System.out.println("> Valor com 30% de desconto: " + Conversor.exibirComDesconto(mouse, 30));
        System.out.println("-----------------------------");
        
        ent.close();
    }
}