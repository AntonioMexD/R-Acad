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

When('I click on “Cursos” option') do
  button="#user-courses"
  find(:css,button).click
end

When('I click on “Curso” course') do
  button="#course-dir-list > ul > li > div > div.bb-card-course-details > h2 > a"
  find(:css,button).click
end

Then('I should see my courses') do
  message="#course-dir-list > ul > li > div > div.bb-card-course-details > h2 > a"
  find(message) == "Curso"
end

Then('I should see the detail of the my course') do |table|
  @myProfileSteps.compareContent(table)
end

