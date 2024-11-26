<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Comparador de Preço</title>
    </head>
    <body>
        <header>
            <h1>Comparador de Preço</h1>
        </header>
        <main>
            <div>
                <form action="comparaPreco.php" method="post">
                    <label for="preco">Preço da cerveja:</label>
                    <input type="number" step="0.01" min="0" name="preco" id="idpreco"><br><br>

                    <label for="embalagem">Embalagem:</label>
                    <select id="embalagem" name="embalagem">
                        <option value="269">269ml</option>
                        <option value="350">350ml</option>
                        <option value="473">473ml</option>
                        <option value="600">600ml</option>
                        <option value="1000">1L</option>
                    </select><br><br>
                    <button type='submit'>Comparar</button>
                </form>
                <br><hr>
            </div>
            <div>
                <?php
                    if (!empty($_POST['preco'])){
                        $tamanhos = array (269, 350, 473, 600, 1000);

                        echo '<br><table border=1 width=500px>';
                        echo '<tr><th>Embalagens</th><th>Preços</th></tr>';
                            foreach ($tamanhos as $tamanho){
                                $precoProp = ($_POST['preco'] / $_POST['embalagem']) * $tamanho;
                                echo '<tr><td>' . $tamanho . 'ml</td><td>R$ ' . number_format($precoProp, 2, ',', '.') . '</td></tr>';
                            }
                        echo '</table>';
                    } else {
                        echo '<h2>Informe o preço!</h2>';
                    }
                ?>
            </div>
        </main>
    </body>
</html>