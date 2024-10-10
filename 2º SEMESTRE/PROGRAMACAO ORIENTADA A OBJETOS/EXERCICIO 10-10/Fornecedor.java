public class Fornecedor {
    /* Declaração dos atributos */
    private String nome;
    private String cnpj;
    private String contato;

    /* Inicializa o construtor */
    public Fornecedor(String nome, String cnpj, String contato){
        setNome(nome);
        setCnpj(cnpj);
        setContato(contato);
    }

    /* Métodos set */
    public void setNome(String nome){
        if (nome.length() >= 3)
            this.nome = nome;
    }
    
    public void setCnpj(String cnpj){
        if (cnpj.length() == 14)
            this.cnpj = cnpj;
    }

    public void setContato(String contato){
        if (contato.length() == 11)
            this.contato = contato;
    }

    /* Métodos get */
    public String getNome(){
        return this.nome;
    }

    public String getCnpj(){
        return this.cnpj;
    }

    public String getContato(){
        return this.contato;
    }
}
