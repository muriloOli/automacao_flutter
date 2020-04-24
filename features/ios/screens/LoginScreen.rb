class LoginScreen < BaseScreen
    def initialize
        check_screen 'Login'
    end
    def goButton
        finding_element 'Entrar'
    end
    def fillUser (user_text)
        insert_text 'Email ou CPF', user_text
    end
    def fillPassword (user_password)
        insert_text 'Senha', user_password
        done = finding_element 'Done'
        done.click
    end
    def waitingLoading
        waitLoading 'In progress'
    end


end