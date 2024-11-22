public class Aplicativo {
    public static void main(String[] args) {

        // Criando o inventário
        Inventario inventario = new Inventario();

        // Criando os itens
        Armadura armadura = new Armadura("Regulus Oni", "Defesa", 9);
        Arma espada1 = new Arma("Destroçadora Oni", "Ataque", 9);
        Arma espada2 = new Arma("Ceifadora Mani", "Ataque", 7);


        // Criando os personagens
        Personagem heroi = new Personagem("Rakus", "Cavaleiro", 20, 4, 1, inventario);
        Inimigo inimigo1 = new Inimigo("Mago de Gelo", 15, 2, 1);
        Inimigo inimigo2 = new Inimigo("Mago de Fogo", 12, 4, 0);
        Inimigo inimigo3 = new Inimigo("Besta Sombria", 20, 1, 2);

        // Adicionando os inimigos ao gerenciamento do jogo
        Gerenciador.adicionarInimigo(inimigo1);
        Gerenciador.adicionarInimigo(inimigo2);
        Gerenciador.adicionarInimigo(inimigo3);

        // Adicionando os itens ao inventário
        inventario.adicionarItem(armadura);
        inventario.adicionarItem(espada1);
        inventario.adicionarItem(espada2);


        // Imprimindo as informações sobre o herói e os inimigos
        System.out.println(" --- Inicio da Batalha ---\n");
        System.out.println(" -- Dados do herói --\n");
        System.out.println(heroi.exibirStatus());
        System.out.println("\n -- Inventário do herói --\n");
        System.out.println(inventario.listarItens());
        System.out.println(" - Itens de Ataque -\n");
        System.out.println(inventario.listarItens("Ataque"));
        System.out.println(" -- Inimigos --\n");
        System.out.println(Gerenciador.listarInimigos());

        // Turno no herói
        System.out.println(" - Heroi ataca Mago de Gelo -\n");
        System.out.println(inimigo1.exibirStatus() + "\n");
        for (int i = 0; i < 4; i++)
            System.out.println(heroi.atacar(inimigo1) + "\n");
        System.out.println(inimigo1.exibirStatus() + "\n");
        System.out.println(heroi.atacar(inimigo1));

        // Imprime os inimigos que restam
        System.out.println("\n - Inimigos restantes -\n");
        System.out.println(Gerenciador.listarInimigos());

        // Turno dos inimigos
        System.out.println(" - Mago de Fogo ataca herói -\n");
        for (int i = 0; i < 6; i++)
            System.out.println(inimigo2.atacar(heroi) + "\n");
        System.out.println(heroi.exibirStatus() + "\n");
        System.out.println(inimigo2.atacar(heroi));
    }
}