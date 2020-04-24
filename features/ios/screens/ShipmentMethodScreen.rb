class ShipmentMethodScreen < BaseScreen
    def initialize
        check_screen 'Método de entrega'
    end
    def saveButton
        finding_element 'Salvar e continuar'
    end
    def setFreeShipment
        free = $driver.find_elements :id,'Grátis'
        free.first.click
    end
    def waitingFreeOption
        waitElement 'Grátis'
    end
end