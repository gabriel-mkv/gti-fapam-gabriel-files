import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner ent = new Scanner(System.in);

        for (int i = 0; i <= 10; i++) {
            System.out.print("Digite um número: ");
            int n = ent.nextInt();

            System.out.println("\n- Dados do número informado -\n");
            if (Utilitario.ePar(n)){
                System.out.println(n + " é par!\n");
            }

            if (Utilitario.eImpar(n)){
                System.out.println(n + " é ímpar!\n");
            }

            if (Utilitario.ePrimo(n)){
                System.out.println(n + " é primo!\n");
            }
        }
        ent.close();
    }
}
