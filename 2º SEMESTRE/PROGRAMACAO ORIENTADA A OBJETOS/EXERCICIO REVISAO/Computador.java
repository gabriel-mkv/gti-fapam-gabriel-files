public class Computador {

    // Declara as variáveis
    private String marca;
    private int memoriaRam;
    private int armazenamento;
    
    // Cria o construtor padrão
    public Computador(){
        setMarca("Genérica");
        setMemoriaRam(4);
        setArmazenamento(500);
    }
    
    // Cria os métodos setter
    public void setMarca(String marca){
        if (marca.length() > 3){
            this.marca = marca;
        }
    }
    public void setMemoriaRam(int memoriaRam){
        if (memoriaRam > 0){
            this.memoriaRam = memoriaRam;
        }
    }
    public void setArmazenamento(int armazenamento){
        if (armazenamento > 0){
            this.armazenamento = armazenamento;
        }
    }
    
    // Cria os métodos getter
    public String getMarca(){
        return this.marca;
    }
    public int getMemoriaRam(){
        return this.memoriaRam;
    }
    public int getArmazenamento(){
        return this.armazenamento;
    }
    
    // Cria o método para atualizar as informações
    public void atualizarEspecificacoes (String marca, int memoriaRam, int armazenamento){
        setMarca(marca);
        setMemoriaRam(memoriaRam);
        setArmazenamento(armazenamento);
    }
    
    // Cria o método para exibir as informações
    public String exibirEspecificacoes(){
        return "> Marca: " + getMarca() + "\n> Memória RAM: " + getMemoriaRam() + " GB\n> Armazenamento: " + getArmazenamento() + " GB";
    }
    
    // Cria o método auxiliar para verificar se o computador é lento
    private boolean ehLento(){
        return getMemoriaRam() < 8;
    }
    
    // Cria o metódo que verifica a partir do método auxiliar ehLento se o desempenho é rápido ou lento
    public String verificarDesempenho(){
        String resposta;

        if (ehLento()){
                resposta = "lento";
        }
        else{
                resposta = "rápido";
            }
            
        return resposta;
        }
        
}