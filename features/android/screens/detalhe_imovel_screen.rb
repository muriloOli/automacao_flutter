class DetalheImovelScreen < BaseScreen
    def initialize
        check_screen'listing_detail_image_view'
    end
    def click_favored
        waitElement'favorite_button_uplift'
        btn = finding_element'favorite_button_uplift'
        btn.click
    end
    def get_address_favored
        address = finding_element 'address_text_view'
        address.text
    end
end