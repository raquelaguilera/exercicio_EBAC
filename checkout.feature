
Funcionalidade: Login na plataforma EBAC-SHOP

  Como cliente da EBAC-SHOP
  Quero fazer login na plataforma  
  Para visualizar meus pedidos

  Contexto:
    Given que estou na página de login

  Esquema do Cenário: Autenticação do usuário na plataforma
    Quando eu insiro credenciais "<usuario>" e "<senha>"
    Então devo ver a mensagem "<mensagem>"

  Examplos:
    | usuario  | senha   | mensagem                         |
    | valido   | valido  | acesso liberado                  |
    | invalido | valido  | Usuário ou senha inválidos       |
    | valido   | errado  | Usuário ou senha inválidos       |
    | vazio    | vazio   | Usuário ou senha inválidos       |
