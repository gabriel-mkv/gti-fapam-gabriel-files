public class Produto {

    private String nome;
    private double preco;
    private int quantidade;

    public Produto(String nome, double preco){
        this.nome = nome;
        this.preco = preco;
        this.quantidade = 0;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public String getNome(){
        return this.nome;
    }

    public void setPreco(double preco){
        this.preco = preco;
    }

    public double getPreco(){
        return this.preco;
    }

    public void setQtd(int quantidade){
        this.quantidade = quantidade;
    }

    public int getQtd(){
        return this.quantidade;
    }

    public void adicionarEstoque(int qtd){
        this.quantidade += qtd;
    }

    public void venderProduto(int qtd){
        if (this.quantidade >= qtd){
            this.quantidade -= qtd;
        } 
        else{
            System.out.println("Quantidade insuficiente!");
        }
    }

    public String exibirProduto(){
        return "> Nome: " + this.nome + "\n> Preço Unitário: " + this.preco + "\n> Estoque: " + this.quantidade;
    }
}