class WelcomeScreen < BaseScreen
    def initialize
        check_screen 'page 1 of 7'
    end
    def skipButton
        finding_element 'Pular'
    end
end

