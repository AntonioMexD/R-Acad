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