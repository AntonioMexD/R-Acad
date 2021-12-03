When('I navigate messages page') do
    profileButton = " #header-aside > div > div.user-wrap.user-wrap-container.menu-item-has-children > a > i"
    messageButton = " #wp-admin-bar-my-account-messages > a"
    find(:css, profileButton).click
    find(:css, messageButton).click
  end
  
  Then('I should see my messages list') do
    findMessagues = "#header-aside > div > div.user-wrap.user-wrap-container.menu-item-has-children > a > i"
    if page.has_css? findMessagues
      expect(page.has_css? findMessagues).to be true
    else
      expect(page.has_css? "#bp-messages-threads-list > div > div").to be true
    end
  end