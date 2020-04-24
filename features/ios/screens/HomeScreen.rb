class HomeScreen < BaseScreen
    def initialize
        check_screen 'Início'
    end
    def beginButton
        finding_element 'Início'
    end
    def couponButton
        finding_element 'Cupons'
    end
    def notificationButton
        finding_element 'Mural'
    end
    def buyButton
        finding_element 'Comprar'
    end
    def menuButton
        finding_element 'Menu'
    end
end
