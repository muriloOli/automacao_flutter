Dado("que o usuario acesse a tela home") do
    @homeScreen = HomeScreen.new
  end
  
  Dado("toque no campo de pesquisa") do
    @homeScreen.click_input_address
  end
  
  Dado("que o usuario preencha o local de pesquisa ex: {string}") do |bdd_address|
    @pesquisa_screen = PesquisaScreen.new
    @pesquisa_screen.fill_address bdd_address
  end
  
  Quando("ele escolher o local sugerido") do
    @pesquisa_screen.click_first_location
  end
  
  Entao("o botao view list deve ser apresentado") do
    @pesquisa_screen.button_available
  end