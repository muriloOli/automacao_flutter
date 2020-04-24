Dado("que estou na tela de cadastro simplificado") do
    steps %( 
        Dado que estou na tela de boas vindas
        Quando toco no botao pular
        Entao sou direcionado para a tela de cadastro rapido
       )
end
  
Quando("toco no botao entrar") do
  @basicSignUpScreen = BasicSignUpScreen.new
  @basicSignUpScreen.goButton.click
end
  
Entao("sou direcionado para a tela de login") do
   @loginScreen = LoginScreen.new
end
