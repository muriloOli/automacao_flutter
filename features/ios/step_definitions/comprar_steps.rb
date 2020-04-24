Dado("que estou na tela de compra") do
    steps %{
        Dado que estou na tela de home
        Quando toco no botao comprar
        Entao sou direcionado para tela comprar}
  end

  Dado("que estou na tela de detalhe do produto {string}") do |bdd_nomeProduto|
    steps %{Quando toco na categoria "Decoração"
    E sou direcionado para tela "Decoração"
    E toco no produto "Almofada 45X45 Blackout Vinho"
    Entao sou direcionado para a tela de detalhe do produto "Almofada 45X45 Blackout Vinho"}
  end

  Dado("que estou no pop-up {string}") do |bdd_popup_mensage|
    steps %{Dado que estou na tela de detalhe do produto "Almofada 45X45 Blackout Vinho"
        Quando toco no botao adicionar a sacola
        Entao o pop-up "Produto Adicionado à sacola!" é apresentado}
  end

  Quando("toco na categoria {string}") do |categoria_bdd|
    @buyScreen.scroll_down
    select_category = @buyScreen.findingCategory categoria_bdd
    select_category.click
  end

  Quando("toco no produto {string}") do |bdd_nomeProduto|

   @categoryScreen.waitingElement
   @categoryScreen.scroll_down
   productName = @categoryScreen.productName bdd_nomeProduto
   productName.click
   @categoryScreen.waitingLoading
  end

  Quando("toco no botao adicionar a sacola") do
    @productDetailScreen.addBagButton.click
    @productDetailScreen.waitingLoading
    
  end

  Quando("toco no botao ir para a sacola") do
    @productDetailScreen.gotoBag_button.click
  end

  Quando("toco no botao comprar agora") do
    @productDetailScreen.buyButton.click
    @productDetailScreen.waitingLoading
  end
  

  Entao("sou/fui direcionado para tela {string}") do |bdd_categoria|
    @categoryScreen = CategoryScreen.new 
    nomeTela = @categoryScreen.categoryLabel bdd_categoria
    expect(bdd_categoria).to eql nomeTela[1].text
    @categoryScreen.waitingLoading
  end
    
  Entao("o aplicativo me lista os produtos disponiveis nesta categoria") do
    $driver.find_elements :xpath,'//*[@value="R$"]'
  end
 
  Entao("sou/fui direcionado para a tela de detalhe do produto {string}") do |bdd_nomeProduto|
    @productDetailScreen = ProductDetailScreen.new
    productName = @productDetailScreen.productName bdd_nomeProduto
    expect(bdd_nomeProduto).to eql productName[1].text
  end
    
  Entao("o pop-up {string} é apresentado") do |bdd_popup_mensagem|
    popup_message = @productDetailScreen.pop_upMessage
    expect(bdd_popup_mensagem).to eql popup_message.text
  end
  
  Entao("sou direcionado para a tela da sacola") do
    @bagScreen = BagScreen.new
  end
  
  Entao("vejo o produto {string}") do |bdd_productName|
    @bagScreen.waitingProduct
    productName = @bagScreen.productName bdd_productName
    expect(bdd_productName).to eql productName.text
  end

 
  
  
  
  