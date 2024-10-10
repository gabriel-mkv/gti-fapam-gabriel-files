public class Conversor {
    /* Método que converte o valor total para valor em dólar a partir da taxa informada */
    public static double converterParaDolar(Produto produto, double cambio){
        return (produto.calculaValorTotal() / cambio);
    }

    /* Método que exibe o valor total com o desconto informado */
    public static double exibirComDesconto(Produto produto, double porcentagem){
        return (produto.getPreco() - (produto.getPreco() * (porcentagem / 100)));
    }
}