<?php
require "noticias.php";

/* Processa o formulário da página cadastrarNoticia */
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $titulo = $_POST["titulo"];
    $texto = $_POST["texto"];
    $categoria = $_POST["categoria"];
    $legenda = $_POST["legenda"];

    if (isset($_FILES["imagem"])) {
        if (cadastraNoticia($titulo, $texto, $categoria, $_FILES['imagem'], $legenda)) {
            echo "Notícia cadastrada com sucesso!";
        } else {
            echo "Erro ao cadastrar a notícia.";
        }    
    } else {
        echo "Erro ao enviar a imagem.";
    }
}
