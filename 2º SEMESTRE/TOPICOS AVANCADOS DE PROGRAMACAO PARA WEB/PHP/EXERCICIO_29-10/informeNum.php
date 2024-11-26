<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Informe um número</title>
    </head>
    <body>
        <header>
            <h1>Informe um número</h1>
        </header>
        <main>
            <div>
                <form action="informeNum.php" method="post">
                    <label for="num">Informe um número:</label>
                    <input type="number" step="0.01" min="0" name="num" id="idnum"><br><br>
                    <button type='submit'>Enviar</button>
                </form>
                <br><hr>
            </div>
            <div>
                <?php
                    if (!empty($_POST['num'])){
                        echo '<h2>O número informado foi ' . $_POST['num'] . '!</h2>';
                    } else {
                        echo '<h2>Digite algo!</h2>';
                    }
                ?>
            </div>
        </main>
    </body>
</html>