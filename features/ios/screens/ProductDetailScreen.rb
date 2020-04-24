class ProductDetailScreen < BaseScreen
    def initialize
        check_screen 'Comprar agora'
    end
    def buyButton
        finding_element 'Comprar agora'
    end
    def addBagButton
        finding_element 'Adicionar à sacola'
    end
    def productName(productName)
        productName = $driver.find_elements :id, productName
    end
    def pop_upMessage
        sleep 10
        finding_element 'Produto Adicionado à sacola!'
    end
    def gotoBag_button
        finding_element 'Ir para a sacola'
    end
    def waitingLoading
        waitLoading 'In progress'
    end

end