class BasicSignUpScreen < BaseScreen
    def initialize
        check_screen 'Já tenho conta, Entrar.'
    end
    def goButton
        sleep 2
        finding_element 'Já tenho conta, Entrar.'
    end
    
end