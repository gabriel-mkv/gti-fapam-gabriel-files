<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Calculadora</title>
    </head>
    <body>
        <header>
            <h1>Calculadora</h1>
        </header>
        <main>
            <div>
                <form action="calculadora.php" method="post">
                    <label for="num1">Informe um número:</label>
                    <input type="number" step="0.01" min="0" name="num1" id="idnum1"><br><br>

                    <label for="num2">Informe outro número:</label>
                    <input type="number" step="0.01" min="0" name="num2" id="idnum2"><br><br>

                    <label for="opc">Escolha a operação:</label><br><br>
                    <input type="radio" name="opc" value="adicao"> Adição
                    <input type="radio" name="opc" value="subtracao"> Subtração
                    <input type="radio" name="opc" value="multiplicacao"> Multiplicação
                    <input type="radio" name="opc" value="divisao"> Divisão <br><br>
                    <button type='submit'>Calcular</button>
                </form>
                <br><hr>
            </div>
            <div>
                <?php
                    if ((isset($_POST['num1']) && isset($_POST['num2']) && isset($_POST['opc']))){
                        $num1 = $_POST['num1'];
                        $num2 = $_POST['num2'];
                        $opc = $_POST['opc'];

                        switch ($opc){
                            case 'adicao':
                                echo "$num1 + $num2 = " . ($num1 + $num2);
                                break;
                            case 'subtracao':
                                echo "$num1 - $num2 = " . ($num1 - $num2);
                                break;
                            case 'multiplicacao':
                                echo "$num1 * $num2 = " . ($num1 * $num2);
                                break;
                            case 'divisao':
                                if ($num2 == 0){
                                    echo '<h2>Divisão por zero não é permitida</h2>';
                                } else{
                                    echo "$num1 / $num2 = " . ($num1 / $num2);
                                    break;
                                }
                        }
                    } else {
                        echo '<h2>Preencha todos os dados!</h2>';
                    }
                ?>
            </div>
        </main>
    </body>
</html>