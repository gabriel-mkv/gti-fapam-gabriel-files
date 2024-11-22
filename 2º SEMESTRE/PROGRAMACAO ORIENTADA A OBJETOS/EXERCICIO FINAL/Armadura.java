public class Armadura extends Item {

    // Atributos
    private int defesa;

    // Construtor
    public Armadura(String nome, String tipo, int defesa) {
        super(nome, tipo);
        setDefesa(defesa);
    }

    // Método Set
    public void setDefesa(int defesa) {
        if (defesa > 5 || defesa < 10)
            this.defesa = defesa;
    }

    // Método Get
    public int getDefesa() {
        return this.defesa;
    }

    // Método que exibe a descrição do item
    public String descricao() {
        return " - Item: " + super.getNome() + "\n - Pontos de defesa: " + getDefesa();
    }
}