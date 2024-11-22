public class Arma extends Item {

    // Atributos
    private int ataque;

    // Construtor
    public Arma(String nome, String tipo, int ataque) {
        super(nome, tipo);
        setAtaque(ataque);
    }

    // Método Set
    public void setAtaque(int ataque) {
        if (ataque > 5 || ataque < 10)
            this.ataque = ataque;
    }

    // Método Get
    public int getAtaque() {
        return this.ataque;
    }

    // Método que exibe a descrição do item
    public String descricao() {
        return " - Item: " + super.getNome() + "\n - Pontos de ataque: " + getAtaque();
    }
}