public class Funcionario {
    
    /* Atributos */
    private String nome;
    private double salario;

    /* Construtor */
    public Funcionario(String nome, double salario) {
        setNome(nome);
        setSalario(salario);
    }

    /* Métodos set */
    public void setNome(String nome) {
        if (nome.length() >= 3) {
            this.nome = nome;
        }
    }

    public void setSalario(double salario) {
        if (salario > 0){
            this.salario = salario;
        }
    }

    /* Métodos get */
    public String getNome() {
        return this.nome;
    }

    public double getSalario() {
        return this.salario;
    }

    /* Método que exibe os dados */
    public String exibirDados(){
        return "> Nome: " + getNome() + "\n> Salário: " + getSalario();
    }    
}