class TwoPaymentMethodScreen < BaseScreen
    def initialize
        check_screen '2 Meios de Pagamento'
    end
    def othersCards
        finding_element 'Demais Cartões'
    end
    def pernambucanasCard
        finding_element 'Cartão Pernambucanas'
    end
    def saveButton
        finding_element 'Salvar e continuar'
    end

end