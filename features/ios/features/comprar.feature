#language: pt

Funcionalidade: Comprar
Sendo um usuário do aplicativo Pernambucanas Varejo 
Quero ter acesso a uma tela onde eu possa escoher os produtos que desejo comprar

Contexto:
Dado que estou na tela de compra

#As Categorias e os Produtos serão fixados no Documento em forma de exemplos, 
#desta forma fica necessario alterar este documento, para realizar-mos testes em cenarios diferentes

Cenario: Acessar a categoria de um produto
Quando toco na categoria "Decoração"
Entao sou direcionado para tela "Decoração"
E o aplicativo me lista os produtos disponiveis nesta categoria 

@loop
Cenario: Acessar o detalhe de um produto
Quando toco na categoria "Decoração"
E sou direcionado para tela "Decoração"
E toco no produto "Almofada 45X45 Blackout Vinho"
Entao sou direcionado para a tela de detalhe do produto "Almofada 45X45 Blackout Vinho"

Cenario: Botao Adicionar à sacola
Dado que estou na tela de detalhe do produto "Almofada 45X45 Blackout Vinho"
Quando toco no botao adicionar a sacola
Entao o pop-up "Produto Adicionado à sacola!" é apresentado

@teste
Cenario: Acessar a sacola
Dado que estou no pop-up "Produto Adicionado à sacola!" 
Quando toco no botao ir para a sacola
Entao sou direcionado para a tela da sacola 
E vejo o produto "Almofada 45X45 Blackout Vinho"

@comprar
Cenario: Botao Comprar agora
Dado que estou na tela de detalhe do produto "Almofada 45X45 Blackout Vinho"
Quando toco no botao comprar agora
Entao sou direcionado para a tela de pagamento

