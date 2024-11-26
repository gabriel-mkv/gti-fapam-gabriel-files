<?php
/* Função que loga no banco de dados */
function conectar_banco_dados(){
    $conn = mysqli_connect('db', 'root', 'rootpassword', 'bancoNoticia') 
    or die ('Falha na conexão com o banco de dados: ' . 
    mysqli_connect_error());
    mysqli_set_charset($conn, 'utf8mb4');

    return $conn;
}

/* Função que busca a notícia por ID e coloca em um array */
function buscarNoticiaPorId($id){
    $dados = [];
    $conn = conectar_banco_dados();
    $stmt = mysqli_prepare($conn, 'SELECT * FROM `noticia` WHERE `id` = ?;');
    mysqli_stmt_bind_param($stmt, 'i', $id);
    mysqli_stmt_execute($stmt);
    $resultado = mysqli_stmt_get_result($stmt);

    while ($dado = mysqli_fetch_assoc($resultado)){
        array_push($dados, $dado);
    }
    mysqli_close($conn);

    if (!empty($dados))
        return $dados;
    return [];
}

/* Função que busca a última notícia destaque e coloca em um array */
function buscarUltimoDestaque($categoria){
    $dados = [];
    $conn = conectar_banco_dados();
    $stmt = mysqli_prepare($conn, 'SELECT * FROM `noticia` WHERE `categoria` = ? ORDER BY id DESC;');
    mysqli_stmt_bind_param($stmt, 's', $categoria);
    mysqli_stmt_execute($stmt);
    $resultado = mysqli_stmt_get_result($stmt);

    while ($dado = mysqli_fetch_assoc($resultado)){
        array_push($dados, $dado);
    }
    mysqli_close($conn);

    if (!empty($dados))
        return $dados;
    return [];
}

/* Função que busca as notícias por categoria e coloca em um array */
function buscarNoticiasPorCategoria($categoria){
    $dados = [];
    $conn = conectar_banco_dados();
    $stmt = mysqli_prepare($conn, 'SELECT * FROM `noticia` WHERE `categoria` = ?;');
    mysqli_stmt_bind_param($stmt, 's', $categoria);
    mysqli_stmt_execute($stmt);
    $resultado = mysqli_stmt_get_result($stmt);

    while ($dado = mysqli_fetch_assoc($resultado)){
        array_push($dados, $dado);
    }
    mysqli_close($conn);

    if (!empty($dados))
        return $dados;
    return [];
}

/* Função que busca 4 notícias aleatórias */
function buscarNoticiasAleatoria(){
    $dados = [];
    $conn = conectar_banco_dados();
    $stmt = mysqli_prepare($conn, 'SELECT imagem, titulo, id FROM `noticia` WHERE categoria NOT LIKE ("Destaque") ORDER BY RAND() LIMIT 4');
    mysqli_stmt_execute($stmt);
    $resultado = mysqli_stmt_get_result($stmt);

    while ($dado = mysqli_fetch_assoc($resultado)){
        array_push($dados, $dado);
    }
    mysqli_close($conn);

    if (!empty($dados))
        return $dados;
    return [];
}

/* Função que cadastra a notícia no banco de dados */
function cadastraNoticia($titulo, $texto, $categoria, $imagem, $legenda){

    $foto = $_FILES["imagem"]["tmp_name"];
    $nomeFinal = 'img/' . date("Y-m-d_H-i-s") . '.jpg';

    if (move_uploaded_file($foto, $nomeFinal)){
        $conn = conectar_banco_dados();
        $stmt = mysqli_prepare($conn, "INSERT INTO noticia (`titulo`, `categoria`, `texto`, `imagem`, `legenda`) VALUES (?,?,?,?,?)");
        mysqli_stmt_bind_param($stmt, "sssss", $titulo, $categoria, $texto, $nomeFinal, $legenda);
        $ret = mysqli_stmt_execute($stmt);
        mysqli_close($conn);

        if ($ret)
            return true;
        echo "Erro ao cadastrar notícia!" . mysqli_error($conn);
        }
}
?>