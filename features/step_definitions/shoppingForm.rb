Before do
    @myCart = MyCart.new
    @user = User.new
end


  Then('I press on Ver Finalizar Compra button') do
    buttonEndBuy = "#post-29 > div > div > div.cart-collaterals > div > div > a"
    find(:css, buttonEndBuy).click
  end
  
  Then('I should see the fields to fill out at checkout') do
    
    labelName = "#billing_first_name_field > label"
    find(labelName) == "Nombre"

    labelLastName = "#billing_last_name_field > label"
    find(labelLastName) == "Apellidos"

    labelCompanyName = "#billing_company_field > label"
    find(labelCompanyName) == "Nombre de la empresa"

    labelCountry = "#billing_country_field > label"
    find(labelCountry) == "País / Región"

    labelAddress = "#billing_address_1_field > label"
    find(labelAddress) == "Dirección de la calle"

    labelCity = "#billing_city_field > label"
    find(labelCity) == "Localidad / Ciudad"

    labelStateField = "#billing_state_field > label"
    find(labelStateField) == "Región / Provincia"

    labelPhone = "#billing_phone_field > label"
    find(labelPhone) == "Teléfono"

    labelEmail = "#billing_email_field > label"
    find(labelEmail) == "Dirección de correo electrónico"
    
    labelInfo = "#order_comments_field > label"
    find(labelInfo) == "Notas del pedido"
  end