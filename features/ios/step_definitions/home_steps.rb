  Dado("que estou na tela de home") do
    
    steps %{
        Dado que estou na tela de login
        Dado preencho os seguintes dados "519.681.526-01" e "Teste@123"
        Quando toco em entrar
        Entao sou direcionado para tela inicial
    }
  end
  
  Quando("toco no botao comprar") do
    @homeScreen.buyButton.click
  end
  
  Entao("sou direcionado para tela comprar") do
    @buyScreen = BuyScreen.new
  end