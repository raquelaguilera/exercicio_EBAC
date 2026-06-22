
Feature: Login na plataforma EBAC-SHOP

  Como cliente da EBAC-SHOP
  Quero fazer login na plataforma  
  Para visualizar meus pedidos

  Background:
    Given que estou na página de login

  Scenario Outline: Autenticação do usuário na plataforma
    When eu insiro credenciais "<usuario>" e "<senha>"
    Then devo ver a mensagem "<mensagem>"

  Examples:
    | usuario  | senha   | mensagem                         |
    | valido   | valido  | acesso liberado                  |
    | invalido | valido  | Usuário ou senha inválidos       |
    | valido   | errado  | Usuário ou senha inválidos       |
    | vazio    | vazio   | Usuário ou senha inválidos       |