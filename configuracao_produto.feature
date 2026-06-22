Feature: Configuração de produto na EBAC-SHOP

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Background:
    Given que estou na página do produto

  Scenario: Configurar produto com sucesso e adicionar ao carrinho
    When eu seleciono a cor do produto
    And eu seleciono o tamanho do produto
    And eu informo uma quantidade válida
    Then todas as seleções devem ser obrigatórias
    And o produto deve ser adicionado ao carrinho

  Scenario Outline: Validação de quantidade de produtos
    When eu informo a quantidade "<quantidade>"
    Then o sistema deve "<resultado>"

  Examples:
    | quantidade | resultado                             |
    | 1          | permitir a adição ao carrinho         |
    | 5          | permitir a adição ao carrinho         |
    | 10         | permitir a adição ao carrinho         |
    | 11         | impedir a compra                      |
    | 0          | exibir mensagem de quantidade inválida|

  Scenario: Limpar seleção do produto
    When eu clicar no botão "limpar"
    Then o sistema deve voltar ao estado original