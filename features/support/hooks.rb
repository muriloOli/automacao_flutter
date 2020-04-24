Before('@setFreeShipment') do |scenario|
    @paymentScreen.changeShipmentMethod.click
    @shipmentMethodScreen = ShipmentMethodScreen.new
    @shipmentMethodScreen.setFreeShipment
    @shipmentMethodScreen.saveButton.click
   
end