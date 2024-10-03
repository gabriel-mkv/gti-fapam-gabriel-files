public class Utilitario {
    
    public static int ano = 2024;

    public static boolean ePar(int num){
        if (num % 2 == 0) {
            return true;
        }
        else {
            return false;
        }
    }

    public static boolean eImpar(int num){
        return !ePar(num);
    }

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