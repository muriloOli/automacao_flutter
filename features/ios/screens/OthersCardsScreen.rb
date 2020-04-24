class OthersCardsScreen < BaseScreen
    def initialize
        check_screen 'Demais Cartões'
    end
    def saveButton
        finding_element 'Salvar e continuar'
    end
    def fillCardNumber (card_number)
        insert_text 'Número do cartão', card_number
    end
    def fillCardName (card_name)
        insert_text 'Nome Impresso no cartão', card_name
    end
    def fillCardValidity (card_validity)
        insert_text 'Validade', card_validity
    end
    def fillCardCvv (card_cvv)
        insert_text 'CVV', card_cvv
        done = finding_element 'Done'
        done.click
    end
    def waitingSwitchButton
        waitElement '1'
    end
    def switchButton
        finding_element '1'
    end

end