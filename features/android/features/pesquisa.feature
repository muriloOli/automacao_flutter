#language: pt
#encoding: utf-8

Funcionalidade: Pesquisa de imoveis
Eu como cliente
Quero pesquisar imóveis que esteja à venda ou aluguel
Para contactar o agent que desejo aludar ou comprar 

Contexto: Acessar a tela de pesquisa
    Dado que o usuario acesse a tela home
    E toque no campo de pesquisa

@doing
Cenario: Pesquisar imovel
Dado que o usuario preencha o local de pesquisa ex: "Compton"
Quando ele escolher o local sugerido
Entao o botao view list deve ser apresentado

