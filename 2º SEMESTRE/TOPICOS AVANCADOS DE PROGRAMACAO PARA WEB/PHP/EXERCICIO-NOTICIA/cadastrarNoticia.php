<!DOCTYPE html>
<?php
    require "noticias.php";
?>
<html lang="pt-br">
<head>
    <meta charset="utf-8"/>
    <title>Notícias da Cidade</title>
    <link rel="stylesheet" type="text/css" href="style.css" media="screen">
</head>
<body>
    <header>
        <div>
            <h1>Notícias da Cidade</h1>
            <hr>
        </div>
    </header>
    <main>
        <div>
            <h2>Cadastre a sua notícia no nosso banco de dados!</h2>
        </div>
        <section>
            <div class="formularioCadastrar">
                <form action="acaoCadastrar.php" method="post" target="_self" enctype="multipart/form-data">
                    <label for="titulo" class="obrigatorio" title="Campo obrigatório">Título:</label>
                    <input type="text" placeholder="Título da notícia" id="titulo" name="titulo" required>

                    <label for="categoria" class="obrigatorio" title="Campo obrigatório">Categoria:</label>
                    <input type="text" placeholder="Categoria da notícia" id="categoria" name="categoria" required>
                
                    <label for="imagem" class= "obrigatorio">Imagem:</label>
                    <input type="file" placeholder="Imagem da notícia" name="imagem" id="imagem" required/>

                    <label for="legenda" class="obrigatorio" title="Campo obrigatório">Legenda:</label>
                    <input type="text" placeholder="Legenda da imagem" id="legenda" name="legenda" required>

                    <label for="texto" class="obrigatorio" title="Campo obrigatório">Texto:</label>
                    <textarea id="text" placeholder="Digite sua mensagem" name="texto" rows="10" required></textarea>

                    <button type="submit">Cadastrar</button>
                    <button type="reset">Limpar</button>
                </form>
            </div>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 - Notícias da Cidade. Todos os direitos reservados.</p>
    </footer>
</body>
</html>
