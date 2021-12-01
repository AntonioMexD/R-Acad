Before do
  @user = User.new
  @myProfileSteps = MyProfile.new
end

Given('I click on Mi Perfil option') do
  button="#menu-item-69 > a > i"
    find(:css,button).click
end

When('I click on “Editar Perfil” button') do
  button="#item-body > div > div > div > div > header > a"
    find(:css,button).click
end

When('I fill the personal information fields with the information as shown as below') do |table|
  @myProfileSteps.fillPersonalInformation(table)
end

When('I click on “Guardar los cambios” option') do
  button="#profile-group-edit-submit"
    find(:css,button).click
end

Then('I should see a message on the top of the screen that says “Cambios guardados.”') do
  message="#item-header > aside > p"
  find(message) == "Cambios guardados."
end