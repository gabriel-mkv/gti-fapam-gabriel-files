public class Caminhao extends Veiculo {

    // Atributo
    private int capacidadeCarga;

    // Construtor
    public Caminhao(String modelo, int ano, int capacidadeTanque, int capacidadeCarga) {
        super(modelo, ano, capacidadeTanque);
        setCapacidadeCarga(capacidadeCarga);
    }

    // Métodos Set e Get
    public void setCapacidadeCarga(int capacidadeCarga) {
        if (capacidadeCarga > 0) {
            this.capacidadeCarga = capacidadeCarga;
        }
    }

    public int getCapacidadeCarga() {
        return this.capacidadeCarga;
    }

    // Método descricao sobrecarregado
    public String descricao() {
        return "-- Caminhão --\n\n" + super.descricao() + "\n > Capacidade de carga: " + getCapacidadeCarga();
    }
}
