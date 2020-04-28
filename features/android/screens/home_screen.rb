class HomeScreen < BaseScreen
    def initialize
        check_screen'brand_logo'
    end
    def click_input_address
        btn = finding_element'on_boarding_location'
        btn.click
    end
end