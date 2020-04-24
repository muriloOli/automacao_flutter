#language: pt

Funcionalidade: Pagamento Produtos
Sendo um usuário do aplicativo Pernambucanas Varejo 
Quero ter acesso a uma tela onde eu encontre os produtos que escolhi
e possa realizar o pagamento dos mesmo

Contexto:
Dado que estou na tela de pagamento


Cenario: Metodo de pagamento Boleto
Dado que meu endereço de entrega esta configurado: "Avenida Marquês de São Vicente, 576 Várzea da Barra Funda, São Paulo - SP CEP: 01139002"
E o metodo de pagamento tambem 
Quando toco no metodo de pagamento boleto
Entao sou direcionado para a tela de boleto

Cenario: Metodo de pagamento Demais cartoes
Dado que meu endereço de entrega esta configurado: "Avenida Marquês de São Vicente, 576 Várzea da Barra Funda, São Paulo - SP CEP: 01139002"
E o metodo de pagamento tambem 
Quando toco no metodo de pagamento demais cartoes
Entao sou direcionado para a tela de demais cartoes

Cenario: Metodo de pagamento Cartoes Pernambucanas
Dado que meu endereço de entrega esta configurado: "Avenida Marquês de São Vicente, 576 Várzea da Barra Funda, São Paulo - SP CEP: 01139002"
E o metodo de pagamento tambem 
Quando toco no metodo de pagamento Cartoes Pernambucanas
Entao sou direcionado para a tela de Cartoes Pernambucanas

Cenario: Metodo 2 meios de pagamento
Dado que meu endereço de entrega esta configurado: "Avenida Marquês de São Vicente, 576 Várzea da Barra Funda, São Paulo - SP CEP: 01139002"
E o metodo de pagamento esta configurado para gratis
Quando toco no metodo de pagamento Dois meios de pagamento
Entao sou direcionado para a tela de Dois meios de pagamento
E devo ver os botoes Deais Cartoes e Cartao Pernambucanas

Cenario: Salvar metodo de pagamento boleto
Dado que estou na tela de boleto
Quando toco em salvar e continuar
Entao sou direcionado para a tela de pagamento
E vejo o metodo de pagamento boleto selecionado

Esquema do Cenario: Salvar os dados do cartao de credito
Dado que estou na tela de demais cartoes
E preencho os seguintes dados: "<Numero_cartao>" e "<Nome_cartao>" e "<Validade>" e "<CVV>" 
Quando desligo a chave para salvar cartao
E toco no  botao salvar
Entao sou direcionado para a tela de pagamento 
E vejo o metodo de pagamento demais cartoes selecionado

 Exemplos: 
      | Numero_cartao    | Nome_cartao             | Validade | CVV |
      | 6505178744443333 | Thiago Joaquim Silveira | 062025   | 653 | 


Cenario: Salvar os dados do cartao pernambucanas
Dado que estou na tela de cartao pernambucanas
E preencho os dados: "6505178744443333" e "Thiago Joaquim Silveira" e "062025" e "653" 
Quando desligo o switch de salvar cartao
E toco no botao salvar e continuar
Entao sou direcionado para a tela de pagamento 
E vejo o metodo de pagamento cartao pernambucanas selecionado



Cenario: Finalizar pagamento por Boleto
Dado que tenho o endereco, a forma de entrega e Boleto selecionados
Quando toco no botao realizar pagamento
Entao vejo um pop-up de "Compra realizada com sucesso!"

Cenario: Finalizar pagamento por Demais cartoes
Dado que tenho o endereco, a forma de entrega e Demais cartoes selecionados
Quando toco no botao realizar pagamento
Entao vejo um pop-up de "Compra realizada com sucesso!"

Cenario: Finalizar pagamento por Cartoes perenambucanas
Dado que tenho o endereco, a forma de entrega e Cartoes pernambucanas selecionados
Quando toco no botao realizar pagamento
Entao vejo um pop-up de "Compra realizada com sucesso!"

@boleto
Cenario: Tela de pagamento realizado por Boleto
Dado que estou no pop-up de compra realizada por boleto
Quando toco no botao OK
Entao sou direcionado para a tela de pagamento realizado com sucesso
E vejo a forma de pagamento Boleto Bancário

@demaiscartoes
Cenario: Tela de pagamento realizado por Demais Cartões
Dado que estou no pop-up de compra realizada por demais cartoes
Quando toco no botao OK
Entao sou direcionado para a tela de pagamento realizado com sucesso
E vejo a forma de pagamento Demais Cartões

@cartaopernambucanas
Cenario: Tela de pagamento realizado por Cartoes Pernambucanas
Dado que estou no pop-up de compra realizada por cartoes pernambucanas
Quando toco no botao OK
Entao sou direcionado para a tela de pagamento realizado com sucesso
E vejo a forma de pagamento Cartoes Pernambucanas