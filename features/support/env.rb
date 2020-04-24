require 'rspec/expectations'
require 'appium_lib'
require 'pry'
require 'rubygems'
require_relative '../ios/screens/BaseScreen.rb'

# # Quando for utilizar o Selenium Grid
# case ENV['PLATFORM']
# when 'android'
# caps = Appium.load_appium_txt file: File.expand_path("/Users/murilo/Automacao/clicCA_QA/features/android/android.txt", __FILE__), verbose: true
# when 'ios'
# caps = Appium.load_appium_txt file: File.expand_path("/Users/murilo/Automacao/clicCA_QA/features/ios/ios.txt", __FILE__), verbose: true
# end

caps_path = File.join(File.dirname(__FILE__), '..', '..', 'caps', ENV['PLATFORM'], "#{ENV['QA']}.txt")
caps = Appium.load_appium_txt file: caps_path, verbose: true
  
Appium::Driver.new(caps, true) 
#  $driver.remove_app('br.com.kanamobi.Pernambucanas-Homolog')
 #$driver.start_driver

 

class AppiumWorld
end

Appium.promote_appium_methods AppiumWorld

World do
    AppiumWorld.new
end

# # Before e After Execucao dos Cenarios 
Before do |scenario|
  $driver.start_driver
    # $driver.alert_accept
    # permicao1 = $driver.find_element :id,'Always Allow'
    # permicao1.click
end
Before do |scenario|

  find_and_accept = lambda do |label|
    loop do
      sleep 0.5
      elements = $driver.find_elements :id, label
      unless elements.empty?
        elements.first.click
        break
      end
    end
  end
  find_and_accept.call('Always Allow')
  find_and_accept.call('Allow')
  find_and_accept.call('OK')
   
 end

Before do |scenario|
  sleep 1
  $driver.find_element :id,'APROVEITE'
  close_button = $driver.find_element :id,'close-button'
  close_button.click
end

#------------#--------------
After do |scenario|
        nome_cenario = scenario.name.tr(' ','_').downcase!
        nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '_') #substitui caracteres especiais
        screenshot = "screenshots/#{nome_cenario}.png"
        img = $driver.screenshot(File.join(screenshot))
        $driver.screenshot(screenshot)


    $driver.driver_quit
    puts "Cenario Testado"
end