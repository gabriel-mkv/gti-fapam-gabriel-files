public class Aplicativo {
    
        public static void main(String[] args){
            Carro Porsche = new Carro("Porsche", "356", 1948);
            
            System.out.println("Marca do carro: " + Porsche.getMarca());
            System.out.println("Modelo do carro: " + Porsche.getModelo());
            System.out.println("Ano de lançamento: " + Porsche.getAno());

            Porsche.setAno(1950);

            System.out.println("Ano de lançamento atualizado: " + Porsche.getAno());
        }
}
