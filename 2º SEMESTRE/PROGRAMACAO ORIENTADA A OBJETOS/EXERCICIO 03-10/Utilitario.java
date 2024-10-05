public class Utilitario {
    
    /* Define a variável ano como estática */
    public static int ano = 2024;

    /* Cria o método que retorna se o número é par */
    public static boolean ePar(int num){
        if (num % 2 == 0) {
            return true;
        }
        else {
            return false;
        }
    }

    /* Cria o método que retorna se o número é ímpar */
    public static boolean eImpar(int num){
        return !ePar(num);
    }

    /* Cria o método que retorna se o número é primo */
    public static boolean ePrimo(int num) {
        int cont = 0;
        boolean resposta = true;

        if (num == 0) {
            resposta = false;
        }

        for (int i = 1; i <= num; i++){
            if (num % i == 0) {
                cont++;
            }

            if (cont > 2) {
                resposta = false;
                break;
            }
        }
        return resposta;
    }
}