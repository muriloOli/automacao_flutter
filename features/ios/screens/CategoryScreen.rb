class CategoryScreen < BaseScreen
    def initialize
        check_screen 'Filtrar Produtos'
    end
    def productName(productName)
        $driver.find_element :id, productName
    end
    def categoryLabel (idElement)
        $driver.find_elements :id, idElement
    end
    def scroll_down
        $driver.swipe start_x: 200, start_y: 220, end_x: 200, end_y: 100
        sleep 1
    end
    def waitingLoading
        waitLoading 'In progress'
    end
    def waitingElement
        waitElementXpath '(//XCUIElementTypeImage[@name="img_requestCards"])[1]'
    end
   
end