Before do
  @user = User.new
  @inicio = Inicio.new
end

Given('I am on the R-acad Home Page') do
  @user.enterWebPage
end

When('I click the “Inicio” button') do
  string = "#menu-item-191 > a"
    find(:css, string).click
end

Then('I should see courses on offer') do |table|
  @inicio.compareTitles(table)
end

When('I click on Word course') do
  string = "#ld-course-list-content-6bff6326b614b5f92cd2dac85b7a4e01 > div > div:nth-child(2) > div > div.bb-card-course-details > h2 > a"
    find(:css, string).click
end

Then('I should see the detail of the course') do |table|
  @inicio.compareContent(table)
end