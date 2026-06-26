Funcionalidade: Configuração de produto na EBAC-SHOP

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que estou na página do produto

  Cenário: Configurar produto com sucesso e adicionar ao carrinho
    Quando eu seleciono a cor do produto
    E eu seleciono o tamanho do produto
    E eu informo uma quantidade válida
    Então todas as seleções devem ser obrigatórias
    E o produto deve ser adicionado ao carrinho

  Esquema do Cenário: Validação de quantidade de produtos
    Quando eu informo a quantidade "<quantidade>"
    Então o sistema deve "<resultado>"

  Examplos:
    | quantidade | resultado                             |
    | 1          | permitir a adição ao carrinho         |
    | 5          | permitir a adição ao carrinho         |
    | 10         | permitir a adição ao carrinho         |
    | 11         | impedir a compra                      |
    | 0          | exibir mensagem de quantidade inválida|

  Cenário: Limpar seleção do produto
    Quando eu clicar no botão "limpar"
    Então o sistema deve voltar ao estado original
