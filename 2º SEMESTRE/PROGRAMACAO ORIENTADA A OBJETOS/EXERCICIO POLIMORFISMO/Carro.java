public class Carro extends Veiculo {

    // Atributo
    private Motor motor;

    // Construtor
    public Carro(String modelo, int ano, int capacidadeTanque, Motor motor) {
        super(modelo, ano, capacidadeTanque);
        this.motor = motor;
    }

    // Método descricao sobrecarregado
    public String descricao() {
        return "-- Carro --\n\n" + super.descricao();
    }

    // Método que exibe detalhes do motor
    public String detalhesMotor() {
        return " > Tipo: " + motor.getTipo() + "\n > Potência: " + motor.getPotencia();
    }
}