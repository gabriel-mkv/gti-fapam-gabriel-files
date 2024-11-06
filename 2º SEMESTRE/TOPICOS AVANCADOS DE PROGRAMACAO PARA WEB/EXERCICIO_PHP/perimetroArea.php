<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Perimetro e Área</title>
    </head>
    <body>
        <header>
            <h1>Calculo do perímetro e área</h1>
        </header>
        <main>
            <div>
                <form action="perimetroArea.php" method="post">
                        <label for="raio">Raio do círculo:</label>
                        <input type="number" step="0.01" min="0" name="raio" id="idnome">
                        <button type='submit'>Calcular</button>
                </form>
                <br><br><hr>
            </div>
            <div>
                <?php
                    if (empty($_POST['raio'])){
                        echo '<h2>Preencha o campo em aberto!</h2>';
                    } else {
                        echo '<h2>Perímetro do círculo: </h2>' . round(($_POST['raio'] * M_PI), 2) . '<br>';
                        echo '<h2>Área do círculo: </h2>' . round((($_POST['raio'] ** 2) * M_PI), 2) . '<br>';
                    }
                ?>
            </div>
        </main>
    </body>
</html>