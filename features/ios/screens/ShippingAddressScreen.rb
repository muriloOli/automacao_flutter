class ShippingAddressScreen < BaseScreen
    def initialize
        check_screen 'Endereço de entrega'
    end
    def setAddressField
        encontre_elemento 'Selecione um endereço'
    end
    def savedAddress(value)
        $driver.find_element :xpath, "//XCUIElementTypeStaticText[@name=\"#{value}\"]"
    end
    def saveButton
        finding_element 'Salvar e continuar'
    end

end