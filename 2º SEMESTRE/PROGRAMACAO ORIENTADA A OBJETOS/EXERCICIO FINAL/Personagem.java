public class Personagem {

    // Atributos
    private String nome;
    private String classe;
    private int vida;
    private int ataque;
    private final int defesa;
    private Inventario mochila;

    // Construtor
    public Personagem(String nome, String classe, int vida, int ataque, int defesa, Inventario mochila) {
        setNome(nome);
        setVida(vida);
        setAtaque(ataque);
        setClasse(classe);
        this.mochila = mochila;
        this.defesa = (defesa < 3) ? defesa : 0;
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
        if (ataque >= 3 || ataque <= 5)
            this.ataque = ataque;
    }

    public void setClasse(String classe) {
        this.classe = classe;
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

    public String getClasse() {
        return this.classe;
    }

    // Método que faz o personagem causar dano ao inimigo
    public final String atacar(Inimigo inimigo) {
        inimigo.receberDano(getAtaque());
        String retorno = " - " + getAtaque() + " de dano causado ao inimigo!";

        if (inimigo.getVida() <= 0) {
            Gerenciador.removerInimigo(inimigo);
            retorno += "\n - " + inimigo.getNome() + " foi morto!";
        }

        return retorno;
    }

    // Método que exibe os dados do inimigo
    public String exibirStatus() {
        return " - Nome: " + getNome() + "\n - Classe: " + getClasse() + "\n - Pontos de Vida: " + getVida()
                + "\n - Pontos de Ataque: " + getAtaque() + "\n - Pontos de Defesa: " + getDefesa();
    }

    // Método que faz o personagem receber dano
    public final void receberDano(int dano) {
        setVida((getDefesa() + getVida()) - dano);
    }
}