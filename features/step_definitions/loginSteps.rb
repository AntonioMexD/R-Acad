Before do
    @user = User.new
  end
  Given('I navigate R-acad login page') do
    @user.enterLoginPage
  end
  
  Given('I enter my credentials') do
    @user.fillCredentials
  end
  
  When('I click {string} button') do |string|
    @user.clickLoginButton
  end
  
  Then('I should see the Home page') do
    @user.isLogged
  end