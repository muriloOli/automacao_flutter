require 'rspec/expectations'
require 'appium_lib'
require 'pry'
require 'rubygems'
require 'cucumber'
require 'pry-nav'
require 'rspec'
require 'selenium-webdriver'
require 'report_builder'
# require_relative '../ios/screens/BaseScreen.rb'

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
# $driver.remove_app'com.move.realtor'
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

#------------#--------------
After do |scenario|

        if scenario.failed?
            unless File.directory?('./reports/screenshots')
              FileUtils.mkdir_p('screenshots')
            end
        
            time_stamp = Time.now.strftime('%Y-%m-%d.%H:%M')
            screenshot_name = time_stamp + '.png'
            screenshot_file = File.join('./reports/screenshots', screenshot_name)
            $driver.screenshot(screenshot_file)
            embed("#{screenshot_file}", 'image/png')
          end


    $driver.driver_quit
    puts "Cenario Testado"

    # $driver.remove_app('com.move.realtor')
end

at_exit do
    ReportBuilder.configure do |config|
        config.input_path = 'reports/reports.json'
        config.report_path = 'reports/reports'
        config.report_title = "Tests Execution Report"
    end
    ReportBuilder.build_report
end