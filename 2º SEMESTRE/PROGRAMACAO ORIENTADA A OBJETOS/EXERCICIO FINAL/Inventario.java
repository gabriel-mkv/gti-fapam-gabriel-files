import java.util.ArrayList;

public final class Inventario {

    // Atributos
    private ArrayList<Item> itens;

    // Construtor
    public Inventario() {
        this.itens = new ArrayList<Item>();
    }

    // Método que adiciona itens ao inventário
    public void adicionarItem(Item item) {
        itens.add(item);
    }

    // Método que remove itens do inventário
    public void removerItem(Item item) {
        itens.remove(item);
    }

    // Método que lista os itens no inventário a partir do tipo
    public String listarItens(String tipo) {
        String retorno = "";

        for (int i = 0; i < itens.size(); i++) {
            if (itens.get(i).getTipo().equals(tipo))
                retorno += itens.get(i).descricao() + "\n\n";
        }

        return retorno;
    }

    // Método que lista todos os itens do inventário
    public String listarItens() {
        String retorno = "";

        for (int i = 0; i < itens.size(); i++) {
            retorno += itens.get(i).descricao() + "\n\n";
        }

        return retorno;
    }
}