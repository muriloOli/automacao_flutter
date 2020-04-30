Dado("que o usuario acesse a tela home") do
    @homeScreen = HomeScreen.new
  end
  
  Dado("toque no campo de pesquisa") do
    @homeScreen.click_input_address
  end
  
  Dado("que o usuario preencha o local de pesquisa ex: {string}") do |bdd_address|
    @pesquisaScreen = PesquisaScreen.new
    @pesquisaScreen.fill_address bdd_address
  end
  
  Quando("ele escolher o local sugerido") do
    @pesquisaScreen.click_first_location
  end
  
  Entao("o botao view list deve ser apresentado") do
    @pesquisaScreen.button_available
  end

  Dado("que o usuario tenha pesquisado um imovel") do
    steps %{
      Dado que o usuario preencha o local de pesquisa ex: "Compton"
      Quando ele escolher o local sugerido
      Entao o botao view list deve ser apresentado
    }
  end
  
  Quando("ele tocar no imovel disponibilizado na lista") do
    @pesquisaScreen.click_viewlist
    @resultadoPesquisaScreen = ResultadoPesquisaScreen.new
    @resultadoPesquisaScreen.click_first_imovel

  end
  
  Entao("o aplicativo deve apresentar os detalhes do imovel") do
    @detalheImovelScreen = DetalheImovelScreen.new
  end

  Dado("que o usuario tenha acessado os detalhes do imovel") do
    steps %{
      Dado que o usuario tenha pesquisado um imovel
      Quando ele tocar no imovel disponibilizado na lista
      Entao o aplicativo deve apresentar os detalhes do imovel
      }
  end
  
  Quando("ele tocar no botao de Favoritar") do
    @detalheImovelScreen.click_favored
    @favored_address =  @detalheImovelScreen.get_address_favored
  end
  
  Entao("o aplicativo deve apresentar o imovel escolhido na lista de imoveis favoritados") do
    @detalheImovelScreen = DetalheImovelScreen.new
    $driver.back
    $driver.back
    sleep 3
    @pesquisaScreen.swipe_menu
    @pesquisaScreen.click_favored_menu
    @imovelFavoritoScreen = ImovelFavoritoScreen.new
    @imovelFavoritoScreen.find_favored_address #@favored_address
 
  end