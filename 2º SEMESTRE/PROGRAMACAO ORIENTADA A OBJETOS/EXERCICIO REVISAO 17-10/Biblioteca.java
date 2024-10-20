import java.util.ArrayList;

public class Biblioteca {
    
    /* Atributos */
    private String nome;
    private ArrayList<Livro> livros;

    /* Construtor */
    public Biblioteca(String nome){
        setNome(nome);
        this.livros = new ArrayList<Livro>();
    }

    /* Métodos set e get */
    public void setNome(String nome){
        if (nome.length() >= 3){
            this.nome = nome;
        }
    }

    public String getNome(){
        return this.nome;
    }

    /* Método para adicionar livro */
    public void adicionarLivro(Livro livro){
        livros.add(livro);
    }

    /* Método para excluir livro do acervo */
    public void removerLivro(String titulo){
        for (int i = 0; i < livros.size(); i++){
            if (livros.get(i).getTitulo().equals(titulo)){
                livros.remove(i);
                break;
            }
        }
    }

    /* Método que exibi os dados dos livros no acervo */
    public String exibirLivros(){
        String retorno = "";
        for (Livro livro : livros){
            retorno += livro.exibirDetalhes();
            retorno += "\n\n";
        }
        return retorno;
    }

    /* Método que exibe os livros no acervo no ano especificado */
    public String exibirLivros(int ano){
        String retorno = "";
        for (Livro livro : livros){
            if (ano == livro.getAnoPublicacao()){
                retorno += livro.exibirDetalhes();
                retorno += "\n\n";
            }
        }
        return retorno;
    }
}
