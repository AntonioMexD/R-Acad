Before do
    @user = User.new
    @miCuentaSteps = MiCuenta.new
  end

  Given('Im logged in r-acad') do
    @user.login
  end
  
  When('I navigate to Mi Cuenta page') do
    button="#menu-item-70 > a > i"
    find(:css,button).click
  end

  When('I fill the passwords fields with the information as shown as below') do |table|
    @miCuentaSteps.fillPasswords(table)
  end
  
  When('I click in “Guardar los cambios” button') do
    click_on ('submit')
  end
  Then('I should see a message on the top of the screen that says “Su configuración ha sido guardada.”') do
    message="#item-header > aside > p"
    find(message) == "Su configuración ha sido guardada."
  end