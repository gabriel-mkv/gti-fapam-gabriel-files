import java.util.Scanner;

    public class Aplicativo {

    public static void main(String[] args) {

        // Cria e instância os objetos da classe computador e do scanner
        Scanner ent = new Scanner(System.in);
        Computador PC = new Computador();

        // Imprime na tela as especificações padrão do objeto PC
        System.out.println("-- Especificações Iniciais --\n");
        System.out.println(PC.exibirEspecificacoes());

        // Atualiza as especificações do objeto PC
        System.out.println("\n-- Atualizar Especificações --\n");

        System.out.print("> Informe a marca: ");
        String pcMarca = ent.next();
        System.out.print("> Informe a QTD de memória ram (em GB): ");
        int mRam = ent.nextInt();
        System.out.print("> Informe a QTD do armazenamento (em GB): ");
        int mPersistente = ent.nextInt();

        PC.atualizarEspecificacoes(pcMarca, mRam, mPersistente);
        
        // Imprime na tela as especificações atualizadas e se o computador é rápido de acordo com suas especificações
        System.out.println("\n-- Especificações Atualizadas --\n");
        System.out.println(PC.exibirEspecificacoes());
        System.out.println("\n> De acordo com as especificações, o computador é " + PC.verificarDesempenho() + "!");
        
    }
}