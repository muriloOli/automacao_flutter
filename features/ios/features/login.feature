#language: pt

Funcionalidade: Login
Sendo um usuário do aplicativo Pernambucanas Varejo 
Quero realizar minha autenticaçao atraves do login 
Para ter acesso as funcionalidades disponiveis para meu usuario 

Contexto:
Dado que estou na tela de login

@login
Cenario: Login sucesso
Dado preencho os seguintes dados "519.681.526-01" e "Teste@123"
Quando toco em entrar
Entao sou direcionado para tela inicial
