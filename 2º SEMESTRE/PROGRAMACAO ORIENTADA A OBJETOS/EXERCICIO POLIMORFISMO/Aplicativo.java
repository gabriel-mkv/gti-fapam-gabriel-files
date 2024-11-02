public class Aplicativo {
    public static void main(String[] args) {

        // Cria as instâncias dos objetos
        Frota frota = new Frota("Legião");
        Motor motor = new Motor("V8", 1017);
        Veiculo moto = new Veiculo("Fan 160", 2024, 16);
        Caminhao caminhao = new Caminhao("Scannia", 2014, 440, 5000);
        Carro carro = new Carro("Ferrari", 2018, 68, motor);

        // Adiciona os veículos no array
        frota.adicionarVeiculo(carro);
        frota.adicionarVeiculo(caminhao);

        // Exibe utilizando o método descricao, os dados dos veículos no array
        System.out.println("-- Dados da Frota --\n");
        System.out.print(frota.exibirVeiculos());

        // Exibe os dados da moto
        System.out.println("-- Dados da Moto --\n");
        System.out.println(moto.descricao());
        System.out.println(" > Gasolina no tanque: " + moto.getLitrosTanque());

        // Abastece a moto utilizando o método abastecer
        System.out.println("\n - Feito abastecimento de 10 litros!\n");
        moto.abastecer(10);
        System.out.println(moto.descricao());
        System.out.println(" > Gasolina no tanque: " + moto.getLitrosTanque());

        // Abastece a moto utilizando o método abastecer sobrecarregado
        System.out.println("\n - Enche o tanque!\n");
        moto.abastecer();
        System.out.println(moto.descricao());
        System.out.println(" > Gasolina no tanque: " + moto.getLitrosTanque());

        // Utiliza o método abastecer nos outros veículos
        System.out.println("\n - Abastecido 100 litros no Scannia e 40 litros na Ferrari!\n");
        caminhao.abastecer(100);
        carro.abastecer(40);
        System.out.println(" > Gasolina no tanque (Scannia): " + caminhao.getLitrosTanque());
        System.out.println(" > Gasolina no tanque (Ferrari): " + carro.getLitrosTanque());
    }
}
