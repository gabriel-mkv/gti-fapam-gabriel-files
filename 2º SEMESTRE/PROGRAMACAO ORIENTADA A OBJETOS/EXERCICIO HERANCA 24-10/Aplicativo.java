public class Aplicativo {
    public static void main(String[] args) {
        
        /* Cria os objetos */
        Funcionario funcionario1 = new Funcionario("João", 1500);
        Funcionario funcionario2 = new Funcionario("Maria", 2500);

        Gerente gerente1 = new Gerente("Marcos", 5000, 240);
        Gerente gerente2 = new Gerente("Vinicius", 4000, 450);

        Programador programador1 = new Programador("Robert", 5550, "C#");
        Programador programador2 = new Programador("Juliana", 5250, "Python");

        /* Exibe os dados dos objetos */
        System.out.println("-- Funcionários do sistema --\n");
        System.out.println(funcionario1.exibirDados());
        System.out.println(funcionario2.exibirDados());

        System.out.println("\n-- Gerentes do sistema --\n");
        System.out.println(gerente1.exibirDados());
        System.out.println(gerente2.exibirDados());

        System.out.println("\n-- Programadores do sistema --\n");
        System.out.println(programador1.exibirDados());
        System.out.println(programador2.exibirDados());
    }
}
