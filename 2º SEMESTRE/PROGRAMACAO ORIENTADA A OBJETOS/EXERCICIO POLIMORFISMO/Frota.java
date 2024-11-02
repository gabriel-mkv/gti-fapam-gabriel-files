public class Frota {

    // Atributos
    private String nome;
    private Veiculo[] veiculos;
    private int cont;

    // Construtor
    public Frota(String nome){
        setNome(nome);
        this.veiculos = new Veiculo[10];
        this.cont = 0;
    }
    
    // Métodos Set e Get
    public void setNome(String nome){
        if (nome.length() > 2){
            this.nome = nome;
        }
    }

    public String getNome(){
        return this.nome;
    }

    // Método que adiciona veículos ao array
    public void adicionarVeiculo(Veiculo veiculo){
        if (cont <= 10) {
            veiculos[cont] = veiculo;
            cont++;
        }
    }

    // Método que exibe a descrição dos veículos no array
    public String exibirVeiculos(){
        String retorno = "";
        for (int i = 0; i < cont; i++){
            retorno += veiculos[i].descricao();
            retorno += "\n\n";
        }

        return retorno;
    }
}