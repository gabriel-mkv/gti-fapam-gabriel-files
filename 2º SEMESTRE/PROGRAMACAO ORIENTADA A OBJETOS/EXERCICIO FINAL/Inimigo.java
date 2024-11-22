public class Inimigo {

    // Atributos
    private String nome;
    private int vida;
    private int ataque;
    private final int defesa;

    // Construtor
    public Inimigo(String nome, int vida, int ataque, int defesa) {
        setNome(nome);
        setVida(vida);
        setAtaque(ataque);
        this.defesa = (defesa <= 2) ? defesa : 0;
    }

    // Métodos Set
    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setVida(int vida) {
        if (vida >= 20 || vida <= 30)
            this.vida = vida;
    }

    public void setAtaque(int ataque) {
        if (ataque >= 2 || ataque <= 4)
            this.ataque = ataque;
    }

    // Métodos Get
    public String getNome() {
        return this.nome;
    }

    public int getVida() {
        return this.vida;
    }

    public int getAtaque() {
        return this.ataque;
    }

    public int getDefesa() {
        return this.defesa;
    }

    // Método que faz o personagem causar dano ao inimigo
    public final String atacar(Personagem personagem) {
        personagem.receberDano(getAtaque());
        String retorno = " - " + getAtaque() + " de dano causado pelo inimigo!";

        if (personagem.getVida() <= 0) {
            System.out.println(" - FIM DE JOGO!");
            System.exit(0);
        }
        return retorno;
    }

    // Método que faz o inimigo receber dano
    public final void receberDano(int dano) {
        setVida((getDefesa() + getVida()) - dano);
    }

    // Método que exibe os dados do inimigo
    public String exibirStatus() {
        return " - Nome: " + getNome() + "\n - Pontos de Vida: " + getVida() + "\n - Pontos de Ataque: " + getAtaque()
                + "\n - Pontos de Defesa: " + getDefesa();
    }
}