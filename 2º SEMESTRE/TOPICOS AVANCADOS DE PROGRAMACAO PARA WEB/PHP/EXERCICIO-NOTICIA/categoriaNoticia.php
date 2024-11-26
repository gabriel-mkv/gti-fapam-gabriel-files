<!DOCTYPE html>
<?php 
    require "noticias.php"; 

    if(isset($_GET['Categoria'])){
        $categoria = filter_var($_GET['Categoria']);
    } else {
        $categoria = "";
    }

    $noticias = buscarNoticiasPorCategoria($categoria); 

?>
<html lang="pt-br">
<head>
    <meta charset="utf-8"/>
    <title>Notícias da Cidade</title>
    <link rel="stylesheet" type="text/css" href="style.css" media="screen">
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
        <section>
            <div class="outrasNoticias">
                <div class="fileira">
                    <div class="titulo-demais-noticias">
                        <h2>Notícias: <?php echo $categoria; ?></h2>
                    </div>
                </div>
                <div class="fileira">
                    <?php foreach ($noticias as $noticia): ?>
                        <div class="textoNoticia">
                            <div class="cardNoticia">
                                <img src="<?php echo $noticia['imagem']; ?>">
                                <p><a href="lerNoticia.php?id=<?php echo $noticia['id']; ?>"><?php echo $noticia['titulo']; ?></a></p>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </section>
    </main>
    <footer>
            <p>&copy; 2024 - Notícias da Cidade. Todos os direitos reservados</p>
            <p>Fale conosco <a href='contato.php' target='_blank' class='link'>aqui</a>.</p>
        </footer>
</body>
</html>