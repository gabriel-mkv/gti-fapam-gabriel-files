<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Calcular Números</title>
    </head>
    <body>
        <header>
            <h1>Calcular Números</h1>
        </header>
        <main>
            <div>
                <form action="calculaNum.php" method="post">
                    <label for="num1">1º número:</label>
                    <input type="number" step="0.01" min="0" name="num1" id="idnum1"><br><br>

                    <label for="num2">2º número:</label>
                    <input type="number" step="0.01" min="0" name="num2" id="idnum2"><br><br>

                    <label for="num3">3º número:</label>
                    <input type="number" step="0.01" min="0" name="num3" id="idnum3"><br><br>
                    <button type='submit'>Calcular</button>
                </form>
                <br><hr>
            </div>
            <div>
                <?php
                    if (!empty($_POST['num1']) && !empty($_POST['num2']) && !empty($_POST['num3'])){
                        echo '<h2><ul>';
                        echo '<li>O produto do dobro do primeiro com metade do segundo:</li>';
                        echo 'Resultado: ' . ($_POST['num1'] * 2) * ($_POST['num2'] / 2);
                        echo '<br><br><li>A soma do triplo do primeiro com o terceiro: </li>';
                        echo 'Resultado: ' . ($_POST['num1'] * 3) + $_POST['num3'];
                        echo '<br><br><li>O terceiro elevado ao cubo:</li>';
                        echo 'Resultado: ' . ($_POST['num3'] ** 3);
                        echo '</ul></h2>';
                    } else {
                        echo '<h2>Informe todos os números!</h2>';
                    }
                ?>
            </div>
        </main>
    </body>
</html>