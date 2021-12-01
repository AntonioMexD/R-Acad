Before do
    @user = User.new
  end
  Given('I am on the R-acad homepage') do
    @user.enterWebPage
  end
  
  When('I click the {string} button') do |string|
    string = "#menu-item-196 > a"
    find(:css, string).click
  end
  
  Then('I should see the {string}') do |string|
    page = "#courses-all > a"
    find(:css, page).click
  end

  When('I click on {string}') do |string|
    string = "#course-dir-list > ul > li:nth-child(3) > div > div.bb-card-course-details > h2 > a"
    find(:css, string).click
  end

  Then('I should see the next message {string}') do |string|
    message = "#ld-tab-content-485 > p"
    find(message) == "En este curso aprenderás a como hacer milkshakes"
  end
