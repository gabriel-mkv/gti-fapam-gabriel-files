public abstract class Item {

    // Atributos
    private String nome;
    private String tipo;

    // Construtor
    public Item(String nome, String tipo) {
        this.nome = nome;
        this.tipo = tipo;
    }

    // Métodos Get
    public String getNome() {
        return this.nome;
    }

    public String getTipo() {
        return this.tipo;
    }

    // Método abstrato que será sobrescrito
    public abstract String descricao();
}