public class Gerente extends Funcionario {
    
    /* Atributo */
    private double bonus;

    /* Construtor */
    public Gerente (String nome, double salario, double bonus){
        super(nome, salario);
        this.bonus = bonus;
    }
    
    /* Método set */
    public void setBonus(double bonus) {
        if (bonus > 0){
            this.bonus = bonus;
        }
    }

    /* Método get */
    public double getBonus() {
        return this.bonus;
    }
    
    /* Método exibirDados sobrescrevido */
    public String exibirDados(){
        return super.exibirDados() + "\n> Bônus: " + getBonus();
    }
}
