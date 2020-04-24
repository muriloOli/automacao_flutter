class BuyScreen < BaseScreen
    def initialize
        check_screen 'Comprar'
    end
    def scroll_down
        $driver.swipe start_x: 200, start_y: 220, end_x: 200, end_y: 140
        sleep 1
    end
    def findingCategory (categoryId)
        $driver.find_element :id, categoryId
    end
    
end