public class Zoo {

    // Atributos
    private String nomeZoo;
    private Animal[] animais;
    private int contador;

    // Construtor
    public Zoo(String nome){
        this.nomeZoo = nome;
        this.animais = new Animal[10];
        this.contador = 0;
    }
    
    // Métodos Get
    public String getNomeZoo() {
        return this.nomeZoo;
    }
    
    public int getContador() {
        return this.contador;
    }

    // Metódo Set
    public void setNomeZoo(String nomeZoo) {
        this.nomeZoo = nomeZoo;
    }

    // Método que adiciona animais ao zoo
    public void adicionarAnimal(Animal animal){
        if (contador <= 10){
            this.animais[contador++] = animal;
        }
    }

    // Método que exclui um animal a partir do nome
    public Animal excluirAnimal(String nome){
        Animal retorno = null;

        for (int i = 0; i < contador; i++){
            if (animais[i].getNome().equals(nome)){
                retorno = animais[i];
            
                while (i <= contador){
                    animais[i] = animais[i + 1];
                    i++;
                }
                break;
            }
        }
        
        contador--;
        return retorno;
    }

    // Método que exibe os dados de todos os animais no zoo
    public String exibirTodosAnimais(){
        String retorno = "";

        for (int i = 0; i < contador; i++){
            retorno += animais[i].exibirInfo();
            retorno += "\n\n";
        }

        return retorno;
    }

    // Método que exibe os habitats de todos os animais no zoo
    public String exibirHabitats(){
        String retorno = "";

        for (int i = 0; i < contador; i++){
            retorno += animais[i].exibirHabitat();
            retorno += "\n\n";
        }

        return retorno;
    }

    // Método que retorna o nome dos mamíferos com gestação menor que 3 meses
    public String exibirMamiferosGestacaoCurta(){
        String retorno = "";

        for (int i = 0; i < contador; i++){
            if (animais[i] instanceof Mamifero) {
                if (((Mamifero)animais[i]).getTempoGestacao() < 3){
                    retorno += animais[i].getNome();
                    retorno += "\n";
                }
            }
        }

        return retorno;
    }
}