public class Livro {

    /* Atributos */
    private String titulo;
    private String autor;
    private int anoPublicacao;
    final int codigoLivro;

    /* Construtores (normal e sobrecarregado) */
    public Livro(String titulo, String autor, int codigoLivro, int anoPublicacao){
        setTitulo(titulo);
        setAutor(autor);
        setAnoPublicacao(anoPublicacao);
        this.codigoLivro = codigoLivro;
    }

    public Livro(String titulo, String autor){
        setTitulo(titulo);
        setAutor(autor);
        this.anoPublicacao = 2024;
        this.codigoLivro = 000;
    }

    /* Métodos set */
    public void setTitulo(String titulo){
        if (titulo.length() >= 3){
            this.titulo = titulo;
        }
    }

    public void setAutor(String autor){
        if (titulo.length() >= 3){
            this.autor = autor;
        }
    }

    public void setAnoPublicacao(int anoPublicacao){
        if (anoPublicacao >= 1900 && anoPublicacao <= 2024){
            this.anoPublicacao = anoPublicacao;
        }
    }

    /* Métodos get */
    public String getTitulo(){
        return this.titulo;
    }
    
    public String getAutor(){
        return this.autor;
    }

    public int getAnoPublicacao(){
        return this.anoPublicacao;
    }

    /* Método exibirDetalhes (normal e sobrecarregado) */
    public String exibirDetalhes(){
        return (" - Título: " + getTitulo() + "\n - Autor: " + getAutor());
    }

    public String exibirDetalhes(boolean valor){
        return (exibirDetalhes() + "\n - Ano de publicação: " + getAnoPublicacao());
    }
}