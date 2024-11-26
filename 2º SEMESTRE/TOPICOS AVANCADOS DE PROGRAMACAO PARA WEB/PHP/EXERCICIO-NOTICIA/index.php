<!DOCTYPE html>

<?php
    require 'noticias.php'; 
    $noticiaDestaque = buscarUltimoDestaque('Destaque');
    $demaisNoticias = buscarNoticiasAleatoria();
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

            <section class="principal">

                <?php if ($noticiaDestaque && isset ($noticiaDestaque[0])) ?>

                <div class="destaque"></div>
                    <div class="fileira">
                        <div class="titulo-Destaque">
                            <h2><?php echo $noticiaDestaque[0]['titulo']; ?></h2>
                        </div>
                    </div>

                    <div class="fileira">
                        <figure class="img-Destaque">
                            <img src="<?php echo $noticiaDestaque[0]['imagem']; ?>" alt="Presidente Nicolás Maduro">
                            <figcaption> 
                                <p><?php echo $noticiaDestaque[0]['legenda']; ?></p>
                            </figcaption>
                        </figure>
                        <div class="texto-destaque">
                            <?php echo $noticiaDestaque[0]['resumo']; ?>
                            <a href="lerNoticia.php?id=<?php echo $noticiaDestaque[0]['id']; ?>" target="_self" class="link">VER MAIS</a>
                        </div>
                    </div>
                </div>
            </section>
            
            <hr>

            <section>
               <div class="demaisNoticias">
                    <div class="fileira">
                        <div class="titulo-demais-noticias">
                            <h3>VEJA TAMBÉM: </h3>
                        </div>
                    </div>
                    <div class="fileira">

                        <?php if ($demaisNoticias)
                        foreach ($demaisNoticias as $noticia): ?>
                            <div class="textoDemaisNoticias">
                                <div class="cardDemaisNoticias">
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
