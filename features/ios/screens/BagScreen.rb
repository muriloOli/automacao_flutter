class BagScreen < BaseScreen
    def initialize
        check_screen_xpath '//XCUIElementTypeApplication[@name="Homolog-PNB"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeImage'

    end
    def productName(id)
        $driver.find_element :id, id  #'Almofada 45X45 Blackout Vinho'
    end
    def buyButton
        sleep 1
        finding_element 'Comprar agora'
    end
    def keepBuyingButton
        finding_element 'Continue Comprando'
    end
    def waitingLoading
        waitLoading 'In progress'
    end
    def waitingProduct
        waitElement 'bg_cart_prime'
    end

end