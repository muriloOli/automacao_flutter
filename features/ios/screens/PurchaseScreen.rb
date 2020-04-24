class PurchaseScreen < BaseScreen
    def initialize
        check_screen 'Forma de Pagamento:'
    end
    def billPaymentMethod
        finding_element 'Boleto Bancário'
    end
    def othersCardsPaymentMethod
        finding_element 'Demais Cartões'
    end
    def pnbCardPaymentMethod
        finding_element 'Cartão Pernambucanas'
    end
end