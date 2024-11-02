public class Motor {

    // Atributos
    private String tipo;
    private int potencia;

    // Construtor
    public Motor(String tipo, int potencia) {
        setTipo(tipo);
        setPotencia(potencia);
    }

    // Métodos Set
    public void setTipo(String tipo) {
        if (tipo.length() > 1) {
            this.tipo = tipo;
        }
    }

    public void setPotencia(int potencia) {
        if (potencia > 0) {
            this.potencia = potencia;
        }
    }

    // Metodos Get
    public String getTipo() {
        return this.tipo;
    }

    public int getPotencia() {
        return this.potencia;
    }
}