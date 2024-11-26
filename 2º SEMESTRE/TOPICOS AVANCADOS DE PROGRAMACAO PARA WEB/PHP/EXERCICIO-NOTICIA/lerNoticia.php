<!DOCTYPE html>
<?php
    require "noticias.php";

    if(isset($_GET['id'])){
        $id = filter_var($_GET['id']);
    } else {
        $id = 1;
    }

    $noticia = buscarNoticiaPorId($id);
    
?>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    <title>Notícias da Cidade</title>
</head>
<body>
    <header>
        <h1>Notícias da Cidade</h1>
        <hr>

        <section class="conteiner-botoes">
            <button type="button"><a href="index.php">HOME</a></button>
            <button type="button"><a href="categoriaNoticia.php?Categoria=Entretenimento" target="_self">ENTRETENIMENTO</a></button>
            <button type="button"><a href="categoriaNoticia.php?Categoria=Esportes" target="_self">ESPORTES</a></button>
            <button type="button"><a href="categoriaNoticia.php?Categoria=Economia" target="_self">ECONOMIA</a></button>
            <button type="button"><a href="categoriaNoticia.php?Categoria=Tecnologia" target="_self">TECNOLOGIA</a></button>    
        </section>

        <hr>
    </header>
    <main>
        <section class="imagem-noticia">
            <figure>
                <img src="<?php echo $noticia[0]['imagem']; ?>" alt="Presidente Nicolás Maduro">
                <figcaption> 
                    <?php echo $noticia[0]['legenda']; ?>
                </figcaption>
            </figure>
        </section>
        <section>
            <hr>
            <div class="textoLerNoticia">
                <?php echo $noticia[0]['texto'] ?>
                <br /><a href="index.php" target="_self" class="link-noticia">RETORNAR A PÁGINA INICIAL</a>
            </div>
            <hr>    
        </section>
    </main>
    <footer>
        <h4>&copy; 2024 - Notícias da Cidade. Todos os direitos reservados.</h4>
    </footer>
</body>
</html>