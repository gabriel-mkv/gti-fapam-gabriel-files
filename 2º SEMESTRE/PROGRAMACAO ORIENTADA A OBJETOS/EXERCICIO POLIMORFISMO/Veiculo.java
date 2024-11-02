public class Veiculo {

    // Atributos 
    private String modelo;
    private int ano;
    private int litrosTanque;
    private final int capacidadeTanque;

    // Construtor
    public Veiculo(String modelo, int ano, int capacidadeTanque){
        setModelo(modelo);
        setAno(ano);
        this.capacidadeTanque = capacidadeTanque;
        this.litrosTanque = 0;
    }

    // Métodos Set 
    public void setModelo(String modelo) {
        if (modelo.length() >= 3) {
            this.modelo = modelo;
        }
    }

    public void setAno(int ano) {
        if (ano > 1900) {
            this.ano = ano;
        }
    }

    // Métodos Get 
    public String getModelo() {
        return this.modelo;
    }

    public int getAno() {
        return this.ano;
    }

    public int getCapacidadeTanque() {
        return this.capacidadeTanque;
    }

    public int getLitrosTanque() {
        return this.litrosTanque;
    }

    // Método que exibe informações sobre o veículo
    public String descricao(){
        return " > Modelo: " + getModelo() + "\n > Ano: " + getAno();
    }

    // Método que abastece o carro
    public void abastecer(int litros){
        if ((litros + getLitrosTanque()) <= capacidadeTanque){
            this.litrosTanque += litros;
        }
    }

    // Método sobrecarregado que abastece o tanque completamente
    public void abastecer(){
        this.litrosTanque = capacidadeTanque;
    }
}