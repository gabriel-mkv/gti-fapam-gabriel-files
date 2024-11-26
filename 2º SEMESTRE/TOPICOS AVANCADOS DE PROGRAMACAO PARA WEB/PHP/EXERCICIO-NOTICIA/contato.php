<!DOCTYPE html>
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
            <div>
                <h2>Fale Conosco!</h2>
            </div>
            <div class="formulario">
                <form action="agradecimentos.php" enctype="application/x-www-form-urlencoded" autocomplete="on" method="post" target="_self">
                    <label for="nome" class="obrigatorio" title="Campo obrigatório">Nome:</label>
                    <input type="text" placeholder="Digite seu nome" id="nome" name="nome" required>

                    <label for="email" class="obrigatorio" title="Campo obrigatório">E-mail:</label>
                    <input type="email" placeholder="Digite seu e-mail" id="email" name="email" required>
                
                    <label for="telefone">Telefone:</label>
                    <input type="tel" placeholder="Digite seu telefone" name="telefone" pattern="\d{2} \d{5}-\d{4}$" title="Formato: XX XXXXX-XXXX"/>

                    <label for="mensagem" class="obrigatorio" title="Campo obrigatório">Mensagem:</label>
                    <textarea id="text" placeholder="Digite sua mensagem" name="mensagem" rows="5" required></textarea>

                    <button type="submit">Enviar</button>
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
