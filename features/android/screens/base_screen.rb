class BaseScreen
    def check_screen (screen_id)
        $driver.wait_true(30) {$driver.exists {$driver.find_element(:id, screen_id)}}
    end
    def check_screen_xpath (xpath)
        $driver.wait_true(30) {$driver.exists {$driver.find_element(:xpath, xpath)}}
    end
    def finding_element (element_id)
        $driver.find_element :id, element_id
    end
    def finding_xpath (xpath)
        $driver.find_element :xpath, xpath
    end
    def insert_text (id, input)
        edit = $driver.find_element :id, id
        edit.send_keys input
        $driver.hide_keyboard
    end 
    def swipe
        $driver.swipe start_x: 200, start_y: 220, end_x: 200, end_y: 100
    end
    def waitLoading(element_id)
        progress = $driver.find_element :id, element_id 
        while progress.visible? == true do 
            
        end
    end
    def waitElement(element_id)
        loop do
            progress = $driver.find_elements :id, element_id
            break if progress.length > 0
            sleep 1
          end
    end
    def waitElementXpath(element_xpath)
        loop do
            progress = $driver.find_elements :xpath, element_xpath
            break if progress.length > 0
            sleep 3
          end
    end
end


