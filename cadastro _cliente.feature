Funcionalidade: Cadastro de cliente na EBAC-SHOP

Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

 Contexto: 
  Dado que estou na página de cadastro
 
 Cenário: Cadastro com todos os dados obrigatórios preenchidos corretamente
  Quando eu preencher todos os campos obrigatórios marcados com asteriscos
  Então devo conseguir concluir o cadastro
  E devo ser direcionada para a finalização da compra
 
 Cenário: Validação de e-mail com formato inválido
  Quando eu inserir e-mail inválido
  Então o sistema deve exibir uma mensagem de erro informando formato inválido
 
 Cenário: Cadastro com campos obrigatórios vazios
  Quando eu tentar cadastrar sem preencher os campos obrigatórios
  Então o sistema deve exibir uma mensagem de alerta informando campos obrigatórios
 
 Esquema do Cenário: Validação de e-mail no cadastro
  Quando eu informar o e-mail "<email>"
  Então o sistema deve exibir a mensagem "<mensagem>"

   Examplos:
     | email            | mensagem                        |
     | valido@email.com | cadastro realizado com sucesso  |
     | invalidoemail    | formato de e-mail inválido      |
     |                  | campo de e-mail obrigatório     |


