public class Produto {
    /* Declaração dos atributos */
    private String nome;
    private double preco;
    private int quantidade;
    private Fornecedor fornecedor;

    /* Incializa o construtor */
    public Produto(String nome, double preco, int quantidade, Fornecedor fornecedor) {
        setNome(nome);
        setPreco(preco);
        setQuantidade(quantidade);
        this.fornecedor = fornecedor;
    }

    /* Métodos set */
    public void setNome(String nome){
        if (nome.length() >= 3){
            this.nome = nome;
        }
    }

    public void setPreco(double preco){
        if (preco > 0){
            this.preco = preco;
        }
    }

    public void setQuantidade(int quantidade){
        if (quantidade >= 0){
            this.quantidade = quantidade;
        }
    }

    /* Métodos get */
    public String getNome(){
        return this.nome;
    }

    public double getPreco(){
        return this.preco;
    }

    public int getQuantidade(){
        return this.quantidade;
    }

    /* Método que altera a quantidade do produto */
    public void ajustaQtd(int qtd){
        if ((this.quantidade - qtd) >= 0){
            this.quantidade += qtd;
        }
    }

    /* Método que retorna o valor total do produto */
    public double calculaValorTotal(){
        return getPreco() * getQuantidade();
    }
}