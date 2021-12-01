Before do
  @registerSteps = Register.new
end

Given('I navigate to Register page') do
  @registerSteps.enterRegisterPage
end

When('I fill the fields with the information as shown as below') do |table|
  @registerSteps.fillFields(table)
end

When('I click on “Crear una cuenta” button') do
  @registerSteps.clickRegisterButton
end

Then('I should see a message that say “Antes de que pueda iniciar sesión, debe confirmar su dirección de correo electrónico a través del correo electrónico que le acabamos de enviar.”') do
  message="#register-page > aside > p"
  find(message) == "Antes de que pueda iniciar sesión, debe confirmar su dirección de correo electrónico a través del correo electrónico que le acabamos de enviar."
end

#To be implemented
Then('I should see the confirmation mail') do
  pending # Write code here that turns the phrase above into concrete actions
end