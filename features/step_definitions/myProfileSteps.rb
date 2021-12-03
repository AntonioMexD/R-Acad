Before do
  @myProfileSteps = MyProfile.new
end

After('@editProfile')do
  @myProfileSteps.resetData
end

Given('I click on Mi Perfil option') do
  @myProfileSteps.clickButton("#menu-item-69 > a > i")
end

When('I click on “Editar Perfil” button') do
  @myProfileSteps.clickButton("#item-body > div > div > div > div > header > a")
end

When('I fill the personal information fields with the information as shown as below') do |table|
  @myProfileSteps.fillPersonalInformation(table)
end

When('I click on “Guardar los cambios” option') do
  @myProfileSteps.clickButton("#profile-group-edit-submit")
end

Then('I should see a message on the top of the screen that says “Cambios guardados.”') do
  message="#item-header > aside > p"
  find(message) == "Cambios guardados."
end

When('I click on “Cursos” option') do
  @myProfileSteps.clickButton("#user-courses")
end

When('I click on “Curso” course') do
  @myProfileSteps.clickButton("#course-dir-list > ul > li > div > div.bb-card-course-details > h2 > a")
end

Then('I should see my courses') do
  message="#course-dir-list > ul > li > div > div.bb-card-course-details > h2 > a"
  find(message) == "Curso"
end

Then('I should see the detail of the my course') do |table|
  @myProfileSteps.compareContent(table)
end

