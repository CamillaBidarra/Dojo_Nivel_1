#language: pt
#UTF-8

Funcionalidade: Registros de funcionarios
    Eu como usuário do sistema
    Quero realizar manutenção no registro de funcionarios
    Para controlar as suas informações cadastrais

@cadastro_funcionario
Cenário: Cadastrar novo funcionario
    Dado eu tenha realizado o login
    Quando acesso a tela de Employee List
    Então realizo o cadastro do funcionario com sucesso

@alteracao_funcionario
Cenario: Alteração do cadastro de funcionario
  Dado eu tenha realizado o login no site
  Quando acesso a tela de Add Employee
  Então os dados cadastrias do funcionario é alterado com sucesso
