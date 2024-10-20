import java.util.Scanner;

public class Aplicativo {

    public static void main(String[] args) {
        
        /* Cria o objeto scanner para o usuário inserir dados */
        Scanner ent = new Scanner(System.in);

        System.out.println("--- SEJA BEM-VINDO AO SISTEMA DE BIBLIOTECA ---\n");
        
        /* Pede ao usuário para inserir o nome e cria o objeto acervo */
        System.out.print(" > Informe o nome do acervo: ");
        Biblioteca acervo = new Biblioteca(ent.nextLine());
        System.out.println("\n - Excelente! " + acervo.getNome() + " é um ótimo nome!\n\n");

        /* Pede ao usuário todos os dados para criar o objeto livro */
        System.out.println(" > Insira os dados dos livro para ser armazenados no acervo:\n");

        System.out.print("\n > Título do livro: ");
        String titulo = ent.nextLine();

        System.out.print("\n > Autor do livro: ");
        String autor = ent.nextLine();
            
        System.out.print("\n > Ano de publicação do livro: ");
        int ano = ent.nextInt();

        ent.nextLine();

        /* Cria e armazena o objeto Livro ao acervo */
        Livro livro = new Livro(titulo, autor, 001, ano);
        acervo.adicionarLivro(livro);

        /* Povoa o acervo com mais livros */
        Livro livro1 = new Livro("O Pequeno Príncipe", "Antoine de Saint-Exupéry", 002, 1943);
        Livro livro2 = new Livro("1984", "George Orwell", 003, 1949);
        Livro livro3 = new Livro("O Nome da Rosa", "Umberto Eco", 004, 1980);
        Livro livro4 = new Livro("Um Conto de Duas Cidades", "Charles Dickens");
        acervo.adicionarLivro(livro1);
        acervo.adicionarLivro(livro2);
        acervo.adicionarLivro(livro3);
        acervo.adicionarLivro(livro4);

        /* Exibe todos os livros do acervo */
        System.out.println("\n\n -- DADOS DO ACERVO " + acervo.getNome().toUpperCase() + " --\n");
        System.out.println(acervo.exibirLivros());

        /* Exibe dados do livro 1984 */
        System.out.println(" -- DADOS DO LIVRO 1984 --\n");
        System.out.println(livro2.exibirDetalhes(true));

        /* Pesquisa um livro a partir do ano especificado pelo usuário */
        System.out.print("\n\n> Informe o ano de publicação para pesquisar os livros: ");
        System.out.println(acervo.exibirLivros(ent.nextInt()));
        
        ent.nextLine();

        /* Remove o livro com o título informado pelo usuário */
        System.out.print("> Informe o título do livro a ser removido do acervo: ");
        acervo.removerLivro(ent.nextLine());
        System.err.println("\n - Livro removido com sucesso!");

        /* Exibe os dados do acervo atualizados */
        System.out.println("\n\n -- DADOS DO ACERVO " + acervo.getNome().toUpperCase() + " ATUALIZADOS --\n");
        System.out.println(acervo.exibirLivros());

        ent.close();
    }
}
