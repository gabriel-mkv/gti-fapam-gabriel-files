## CENÁRIO

> Livraria: a empresa escolhida se trata de uma livraria online, nome 'Livraria Literária', seu foco não está em um gênero específico de livro e sim de forma geral.

### COLLECTIONS

- Livro: irá consistir nas informações dos livros cadastrados, o banco de dados não relacional faz mais sentido devido a escalabilidade, pois a livraria pode ter um número significativo de livros e a flexibilidade, pois fica mais fácil adicionar novas informações se necessário.

| Atributos | Tipo |
|-----------|------|
|titulo     |String|
|autor      |String|
|isbn       |String|
|categoria  |Array de String|
|preco      |float |
|estoque    |int   |

---

- Usuarios: irá consistir nas informações dos usuários cadastrados, utilizado banco de dados não relacional tammém devido a escalibidade porém também devido aos usuários serem entidades distintas e independentes da Livraria, contendo suas próprias ações e dados.

| Atributos | Tipo |
|-----------|------|
|nome       |String|
|email      |String|
|endereço   |String|
|senha      |String|
|favoritos  |Array de ObjectId|

---

- Carrinho: irá consistir nas informações sobre o id do usuário e nos livros que foram selecionado para serem comprados. Os motivos de se utilizar o banco de dados não relacional são a flexibilidade, pois o carrinho pode ser rapidamente e facilmente modificado e devido a conter dados dinâmicos que variam constantemente.

| Atributos | Tipo |
|-----------|------|
|usuario_id |ObjectId|
|itens      |Array de Objetos (livro_id, qtd)|