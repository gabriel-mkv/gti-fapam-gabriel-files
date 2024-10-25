public class Programador extends Funcionario {

    /* Atributo */
    private String linguagem;

    /* Construtor */
    public Programador(String nome, double salario, String linguagem){
        super(nome, salario);
        setLinguagem(linguagem);
    }
    
    /* Método set */
    public void setLinguagem(String linguagem) {
        this.linguagem = linguagem;
    }

    /* Método get */
    public String getLinguagem() {
        return this.linguagem;
    }

    /* Método exibirDados sobrescrevido */
    public String exibirDados(){
        return super.exibirDados() + "\n> Linguagem: " + getLinguagem();
    }
}
