Before do
    @user = User.new
  end
  Given('I am on the R-acad homepage') do
    @user.enterWebPage
  end
  
  Given('I click the {string} button') do |string|
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
  
  Given('I click the {string} cart') do |string|
    string = "#post-1024 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-724e068e.elementor-section-full_width.elementor-section-height-min-height.elementor-section-stretched.elementor-section-height-default.elementor-section-items-middle > div.elementor-container.elementor-column-gap-wide > div > div.elementor-column.elementor-col-50.elementor-top-column.elementor-element.elementor-element-6a2eae92 > div > div > section > div.elementor-container.elementor-column-gap-default > div > div.elementor-column.elementor-col-33.elementor-inner-column.elementor-element.elementor-element-72f92542 > div > div > div > div > div > div.elementor-cta__content"
    find(:css, string).click
  end

  Given('I clicked on the name of the course {string}') do |string|
    string = "#post-1024 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-86dbaba.elementor-section-stretched.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > section > div > div > div.elementor-column.elementor-col-25.elementor-inner-column.elementor-element.elementor-element-e869c48 > div > div > div.elementor-element.elementor-element-026f945.elementor-align-left.elementor-widget.elementor-widget-button.animated.fadeInUp > div > div > a > span > span"
    find(:css, string).click
  end
  
  Then('I should see the course information') do
    pending # Write code here that turns the phrase above into concrete actions
  end

  
