  Dado("que estou na tela de pagamento") do
    steps %{
      Dado que estou na tela de compra
      Dado que estou na tela de detalhe do produto "Almofada 45X45 Blackout Vinho"
        Quando toco no botao comprar agora
        Entao sou direcionado para a tela de pagamento
    }
    
  end

  Dado("que meu endereço de entrega esta configurado: {string}") do |bdd_endereco|
    
    @paymentScreen.waitingInformation
    endereco = @paymentScreen.addressSaved bdd_endereco
    expect(bdd_endereco).to eql endereco.text
  end
  
  Dado("o metodo de pagamento tambem") do
    @paymentScreen.shipmentMethodSaved
  end
  
  Dado("que estou na tela de boleto") do
    steps %{
     Dado que meu endereço de entrega esta configurado: "Avenida Marquês de São Vicente, 576 Várzea da Barra Funda, São Paulo - SP CEP: 01139002"
     E o metodo de pagamento tambem 
     Quando toco no metodo de pagamento boleto
     Entao sou direcionado para a tela de boleto
    }
   end

   Dado("que tenho o endereco, a forma de entrega e Boleto selecionados") do
    steps %{
      Dado que estou na tela de boleto
      Quando toco em salvar e continuar
      Entao sou direcionado para a tela de pagamento
      E vejo o metodo de pagamento boleto selecionado
    }
  end

  Dado("que estou no pop-up de compra realizada por boleto") do 
    steps %{
      Dado que tenho o endereco, a forma de entrega e Boleto selecionados
      Quando toco no botao realizar pagamento
      Entao vejo um pop-up de "Compra realizada com sucesso!"
    }
  end

  Dado("que estou na tela de demais cartoes") do
    steps %{
      Dado que meu endereço de entrega esta configurado: "Avenida Marquês de São Vicente, 576 Várzea da Barra Funda, São Paulo - SP CEP: 01139002"
      E o metodo de pagamento tambem 
      Quando toco no metodo de pagamento demais cartoes
      Entao sou direcionado para a tela de demais cartoes
    }
  end

  Dado("que tenho o endereco, a forma de entrega e Demais cartoes selecionados") do
     steps %{
      Dado que estou na tela de demais cartoes
      E preencho os seguintes dados: "6505178744443333" e "Thiago Joaquim Silveira" e "062025" e "653" 
      Quando desligo a chave para salvar cartao
      E toco no  botao salvar
      Entao sou direcionado para a tela de pagamento 
      E vejo o metodo de pagamento demais cartoes selecionado
     }
  end

  Dado("preencho os seguintes dados: {string} e {string} e {string} e {string}") do |numeroCartao, nomeCartao, validade, cvv|
    @othersCardsScreen.fillCardNumber numeroCartao
    @othersCardsScreen.fillCardName nomeCartao
    @othersCardsScreen.fillCardValidity validade
    @othersCardsScreen.fillCardCvv cvv
  end

  Dado("que estou no pop-up de compra realizada por demais cartoes") do
    steps %{
      Dado que tenho o endereco, a forma de entrega e Demais cartoes selecionados
      Quando toco no botao realizar pagamento
      Entao vejo um pop-up de "Compra realizada com sucesso!"
    }
  end

  Dado("que estou na tela de cartao pernambucanas") do
    steps %{
      Dado que meu endereço de entrega esta configurado: "Avenida Marquês de São Vicente, 576 Várzea da Barra Funda, São Paulo - SP CEP: 01139002"
      E o metodo de pagamento tambem 
      Quando toco no metodo de pagamento Cartoes Pernambucanas
      Entao sou direcionado para a tela de Cartoes Pernambucanas
    }
  end

  Dado("preencho os dados: {string} e {string} e {string} e {string}") do |numeroCartao, nomeCartao, validade, cvv|
    @pernambucanasCardScreen.fillCardNumber numeroCartao
    @pernambucanasCardScreen.fillCardName nomeCartao
    @pernambucanasCardScreen.fillCardValidity validade
    @pernambucanasCardScreen.fillCardCvv cvv
  end

  Dado("que tenho o endereco, a forma de entrega e Cartoes pernambucanas selecionados") do
    steps %{
      Dado que estou na tela de cartao pernambucanas
      E preencho os dados: "6505178744443333" e "Thiago Joaquim Silveira" e "062025" e "653" 
      Quando desligo o switch de salvar cartao
      E toco no botao salvar e continuar
      Entao sou direcionado para a tela de pagamento 
      E vejo o metodo de pagamento cartao pernambucanas selecionado
    }
  end


  Dado("que estou no pop-up de compra realizada por cartoes pernambucanas") do
    steps %{
      Dado que tenho o endereco, a forma de entrega e Cartoes pernambucanas selecionados
      Quando toco no botao realizar pagamento
      Entao vejo um pop-up de "Compra realizada com sucesso!"
    }
  end

  Dado("o metodo de pagamento esta configurado para gratis") do
    @paymentScreen.changeShipmentMethod.click
    @shipmentMethodScreen = ShipmentMethodScreen.new
    @shipmentMethodScreen.waitingFreeOption
    @shipmentMethodScreen.setFreeShipment
    @shipmentMethodScreen.saveButton.click
  end

  Quando("toco no metodo de pagamento boleto") do
    @paymentScreen.swipe
    @paymentScreen.billMethodButton.click
  end

  Quando("toco em salvar e continuar") do
    @billMethodScreen.saveButton.click
  end
  
  Quando("toco no botao realizar pagamento") do
    @paymentScreen.swipe
    @paymentScreen.finishPaymentButton.click
  end

  Quando("toco no botao OK") do
    @paymentScreen.successPopUpButton.click
  end

  Quando("toco no metodo de pagamento demais cartoes") do
    @paymentScreen.swipe
    @paymentScreen.othersCards.click
  end

  Quando("desligo a chave para salvar cartao") do
    @othersCardsScreen.waitingSwitchButton
    @othersCardsScreen.switchButton.click
  end
  
  Quando("toco no  botao salvar") do
    @othersCardsScreen.saveButton.click
  end

  Quando("toco no metodo de pagamento Cartoes Pernambucanas") do
    @paymentScreen.pernambucanasCard.click
  end

   Quando("desligo o switch de salvar cartao") do
    @pernambucanasCardScreen.waitingSwitchButton
    @pernambucanasCardScreen.switchButton.click
  end

  Quando("toco no botao salvar e continuar") do
    @pernambucanasCardScreen.saveButton.click
  end


  Quando("toco no metodo de pagamento Dois meios de pagamento") do
    @paymentScreen.waitingPnbCard
    @paymentScreen.swipe
    @paymentScreen.twoPaymentMethod.click
  end
  

  Entao("sou direcionado para a tela de boleto") do
    @billMethodScreen = BillMethodScreen.new
  end

  Entao("vejo o metodo de pagamento boleto selecionado") do
    @paymentScreen.billMethodSaved
  end 
  
  Entao("vejo um pop-up de {string}") do |bdd_message|
    @paymentScreen.waitingOK
    popup = @paymentScreen.successPopUp.text
    expect(bdd_message).to eql popup
  end
   
  Entao("sou direcionado para a tela de pagamento realizado com sucesso") do
    @purchaseScreen = PurchaseScreen.new 
  end

  Entao("vejo a forma de pagamento Boleto Bancário") do
    @purchaseScreen.billPaymentMethod
  end
  
  Entao("sou direcionado para a tela de demais cartoes") do
    @othersCardsScreen = OthersCardsScreen.new
  end
  
  Entao("vejo o metodo de pagamento demais cartoes selecionado") do
    @paymentScreen.othersCards
  end

  Entao("vejo a forma de pagamento Demais Cartões") do
    @purchaseScreen.othersCardsPaymentMethod
  end
  
  Entao("sou direcionado para a tela de Cartoes Pernambucanas") do
    @pernambucanasCardScreen = PernambucanasCardScreen.new
  end

  Entao("vejo o metodo de pagamento cartao pernambucanas selecionado") do
    @paymentScreen.pernambucanasCard
    @paymentScreen.swipe
  end
  
  Entao("vejo a forma de pagamento Cartoes Pernambucanas") do
    @purchaseScreen.pnbCardPaymentMethod
  end

  Entao("sou direcionado para a tela de Dois meios de pagamento") do
    @twoPaymentMethodScreen = TwoPaymentMethodScreen.new
  end
  
  Entao("devo ver os botoes Deais Cartoes e Cartao Pernambucanas") do
    @twoPaymentMethodScreen.pernambucanasCard
    @twoPaymentMethodScreen.othersCards
  end