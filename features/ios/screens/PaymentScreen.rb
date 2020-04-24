class PaymentScreen < BaseScreen
    def initialize
        check_screen 'Pagamento'
    end
    def billMethodButton
        finding_element 'Boleto Bancário'
    end
    def billMethodSaved
        finding_element 'Boleto'
    end
    def othersCards
        finding_element 'Demais Cartões'
    end
    def pernambucanasCard
        finding_element 'Cartão Pernambucanas'
    end
    def twoPaymentMethod
        finding_element '2 Meios de Pagamento'
    end
    def shipmentField
        check_screen 'Endereço de Entrega'
    end
    def changeShipmentMethod
        finding_element 'Trocar método de entrega'
    end
    def shipmentMethod
        finding_element 'Método de Entrega'
    end
    def choiceButton
        finding_element 'Escolher'
    end
    def finishPaymentButton
        finding_element 'Realizar pagamento'
    end
    def addressSaved(value)
        $driver.find_element :xpath, "//XCUIElementTypeStaticText[@name=\"#{value}\"]"
        #Avenida Marquês de São Vicente, 576 Várzea da Barra Funda, São Paulo - SP CEP: 01139002
    end
    def shipmentMethodSaved
        $driver.find_element :xpath,'//XCUIElementTypeApplication[@name="Homolog-PNB"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]'
    end
    def swipe
        $driver.swipe start_x: 200, start_y: 220, end_x: 200, end_y: 100
    end
    def successPopUp
        finding_element 'Compra realizada com sucesso!'
    end
    def successPopUpButton
        finding_element 'OK'
    end
    def waitingOK
        waitElement 'OK'
    end
    def waitingInformation
        waitElement 'Informações de entrega'
    end
    def waitingPnbCard
        waitElement 'Cartão Pernambucanas'
    end
    def swipe
        $driver.swipe start_x: 200, start_y: 220, end_x: 200, end_y: 100
    end
    
end