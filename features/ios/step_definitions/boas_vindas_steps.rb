Dado("que estou na tela de boas vindas") do
   @welcomeScreen = WelcomeScreen.new
end
  
Quando("toco no botao pular") do
    @welcomeScreen.skipButton.click
end
  
Entao("sou direcionado para a tela de cadastro rapido") do
  @basicSignUpScreen = BasicSignUpScreen.new
end