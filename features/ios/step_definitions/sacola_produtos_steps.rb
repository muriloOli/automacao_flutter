Dado("que estou na tela de Sacola") do
    steps %{
      Dado que estou na tela de compra
      Dado que estou na tela de detalhe do produto "Almofada 45X45 Blackout Vinho"
        Quando toco no botao adicionar a sacola
        Entao o pop-up "Produto Adicionado à sacola!" é apresentado
        Quando toco no botao ir para a sacola
        Entao sou direcionado para a tela da sacola 
    }
    end
  
  Quando("todo no botao comprar agora") do
    #sleep 5
    @bagScreen.buyButton.click
    @bagScreen.waitingLoading
  end
  
  Entao("sou direcionado para a tela de pagamento") do
    @paymentScreen = PaymentScreen.new
    
  end
