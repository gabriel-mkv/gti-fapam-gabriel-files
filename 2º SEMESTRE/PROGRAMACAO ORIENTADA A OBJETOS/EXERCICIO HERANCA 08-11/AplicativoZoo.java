public class AplicativoZoo {
    public static void main(String[] args) {

        // Instanciando o array
        Zoo zoo = new Zoo("Zow");

        // Criando as instâncias
        Mamifero zebra = new Mamifero("Zebra", 5, "Herbívoro", 12);
        Mamifero cavalo = new Mamifero("Cavalo", 5, "Herbívoro", 2);
        Ave periquito = new Ave("Periquito", 1, "Herbívoro", false);
        Ave gaivota = new Ave("Gaivota", 4, "Herbívoro", true);
        
        // Adicionando animais no array
        zoo.adicionarAnimal(zebra);
        zoo.adicionarAnimal(cavalo);
        zoo.adicionarAnimal(periquito);
        zoo.adicionarAnimal(gaivota);

        // Imprimindo os dados dos animais em atração
        System.out.println("--- Zoológico " + zoo.getNomeZoo() + " ---\n");
        System.out.println(" - Animais em atração: \n");
        System.out.println(zoo.exibirTodosAnimais());

        // Removendo o cavalo e imprimindo os animais restantes
        System.out.println(" - " + zoo.excluirAnimal("Cavalo").getNome() + " foi removido do Zow!\n");
        System.out.println(" - Animais restantes:\n");
        System.out.println(zoo.exibirTodosAnimais());

        // Imprimindo informações sobre seus habitats
        System.out.println(" - Informaçõe sobre seus habitats:\n");
        System.out.println(zoo.exibirHabitats());

        // Imprimindo os animais com período de gestação curta
        System.out.print(" - Mamíferos com período de gestação menor que 3 meses: ");
        System.out.print(zoo.exibirMamiferosGestacaoCurta());
    }    
}
