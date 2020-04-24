  Dado("que estou na tela de login") do
    steps %( 
        Dado que estou na tela de cadastro simplificado
        Quando toco no botao entrar
        Entao sou direcionado para a tela de login
       )
  end
  
  Dado("preencho os seguintes dados {string} e {string}") do |bdd_usuario, bdd_senha|
    @loginScreen.fillUser bdd_usuario
    @loginScreen.fillPassword bdd_senha
  end
  
  Quando("toco em entrar") do
    @loginScreen.goButton.click
    @loginScreen.waitingLoading
  end
  
  Entao("sou direcionado para tela inicial") do
    @homeScreen = HomeScreen.new
  end