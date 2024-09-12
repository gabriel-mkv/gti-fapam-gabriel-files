public class Pessoa {

    private String nome;
    private int idade;
    private double altura;
    
    public void setNome(String nome){
        this.nome = nome;
    }
    
    public String getNome(){
        return this.nome;
    }
    
    public void setIdade(int idade){
        this.idade = idade;
    }
    
    public int getIdade(){
        return this.idade;
    }
    
    public void setAltura(double altura){
        this.altura = altura;
    }
    
    public double getAltura(){
        return this.altura;
    }
    
    public String exibirDados(){
        return ("Nome: " + this.nome + "\nIdade: " + this.idade + "\nAltura: " + this.altura);
    }

}
