class HomeScreen < BaseScreen
    def initialize
        check_screen'brand_logo'
    end
    def click_input_address
        btn = finding_element'on_boarding_location' 
        btn.click
        # Entre aspas simples temos o Identificador 
        # da inputbox de preenchimento do local para pesquisa de imóveis
        # finding_element: método criado na clase base responsável
        # por identificar os emelentos  via id
    end
end