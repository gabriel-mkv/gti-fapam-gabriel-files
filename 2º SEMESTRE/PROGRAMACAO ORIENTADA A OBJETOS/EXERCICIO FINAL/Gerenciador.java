import java.util.ArrayList;

public class Gerenciador {

    // Atributo
    private static ArrayList<Inimigo> inimigos = new ArrayList<Inimigo>();

    // Método que adiciona os personagens ao gerenciador
    public static void adicionarInimigo(Inimigo inimigo) {
        inimigos.add(inimigo);
    }

    // Método que adiciona os personagens ao gerenciador
    public static void removerInimigo(Inimigo inimigo) {
        inimigos.remove(inimigo);
    }

    // Método que lista um inimigo a partir do nome
    public static String listarInimigos(String titulo) {
        String retorno = "";

        for (int i = 0; i < inimigos.size(); i++) {
            if (inimigos.get(i).getNome().equals(titulo))
                retorno += inimigos.get(i).exibirStatus();
        }

        return retorno;
    }

    // Método que lista todos os inimigos
    public static String listarInimigos() {
        String retorno = "";

        for (int i = 0; i < inimigos.size(); i++) {
            retorno += inimigos.get(i).exibirStatus() + "\n\n";
        }

        return retorno;
    }
}