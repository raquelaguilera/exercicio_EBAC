Feature: Cadastro de cliente na EBAC-SHOP


Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Background: 
 Given que estou na página de cadastro
 
Scenario: Cadastro com todos os dados obrigatórios preenchidos corretamente
 When eu preencher todos os campos obrigatórios marcados com asteriscos
 Then devo conseguir concluir o cadastro
 And devo ser direcionada para a finalização da compra
 
Scenario: Validação de e-mail com formato inválido
 When eu inserir e-mail inválido
 Then o sistema deve exibir uma mensagem de erro informando formato inválido
 
Scenario: Cadastro com campos obrigatórios vazios
 When eu tentar cadastrar sem preencher os campos obrigatórios
 Then o sistema deve exibir uma mensagem de alerta informando campos obrigatórios
 
Scenario Outline: Validação de e-mail no cadastro
 When eu informar o e-mail "<email>"
 Then o sistema deve exibir a mensagem "<mensagem>"

  Examples:
    | email            | mensagem                        |
    | valido@email.com | cadastro realizado com sucesso  |
    | invalidoemail    | formato de e-mail inválido      |
    |                  | campo de e-mail obrigatório     |


