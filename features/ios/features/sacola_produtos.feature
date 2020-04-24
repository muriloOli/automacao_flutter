#language: pt

Funcionalidade: Sacola de produtos
Sendo um usuário do aplicativo Pernambucanas Varejo 
Quero ter acesso a uma tela onde eu encontre os produtos que escolhi

Contexto:
Dado que estou na tela de Sacola

@sacola
Cenario: Finalizar compra
Quando todo no botao comprar agora
Entao sou direcionado para a tela de pagamento
