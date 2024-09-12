public class Aplicativo {

    public static void main(String[] args){
        Pessoa Jonas = new Pessoa();
        Pessoa Alberto = new Pessoa();
        
        Jonas.setNome("Jonas");
        Jonas.setIdade(20);
        Jonas.setAltura(1.73);

        Alberto.setNome("Alberto");
        Alberto.setIdade(35);
        Alberto.setAltura(1.81);
        
        System.out.println(Jonas.exibirDados() + "\n");
        System.out.println(Alberto.exibirDados());
    }

}