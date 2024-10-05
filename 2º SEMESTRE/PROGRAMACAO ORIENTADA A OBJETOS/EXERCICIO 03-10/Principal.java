/* Importa a classe Scanner */
import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {

        /* Cria o objeto ent da classe Scanner */
        Scanner ent = new Scanner(System.in);
        
        /* Crie um loop que irá até 10 números */
        for (int i = 0; i <= 10; i++) {

            /* Exibe a mensagem para o usúario digitar o número e armazena na variável n */
            System.out.print("Digite um número: ");
            int n = ent.nextInt();
            
            /* Exibe as informações sobre o número que o usuário digitou */
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
