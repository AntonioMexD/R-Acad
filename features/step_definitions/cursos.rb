Before do
    @user = User.new
  end
  Given('I am on the R-acad homepage') do
    @user.enterWebPage
  end
  
  When('I click the {string} button') do
    click_on ('//*[@id="menu-item-196"]/a')
  end
  
  Then('I should see the {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end