class BillMethodScreen < BaseScreen
    def initialize
        check_screen 'Boleto'
    end
    def saveButton
        finding_element 'Salvar e continuar'
    end

end