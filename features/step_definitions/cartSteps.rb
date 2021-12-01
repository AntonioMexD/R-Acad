Before do
        @user = User.new
    end

    When('I click on {string} button') do |string|
        string = "#btn-join"
        find(:css, string).click
    end

    When('I click on {string} button yellow') do |string|
        string = "#product-856 > div.summary.entry-summary > form > button"
        find(:css, string).click
    end

    Then('I should see the next alert message {string}') do |string|
        string = "#main > div.woocommerce-notices-wrapper > div"
        find(string) == "“Como hacer milkshakes” se ha añadido a tu carrito."
    end

    When('I press on {string}') do |string|
        string = "#course-dir-list > ul > li:nth-child(1) > div > div.bb-card-course-details > h2 > a"
        find(:css, string).click
    end
      
    Then('I should see the alert message {string}') do |string|
        string = "#main > div.woocommerce-notices-wrapper > div"
        find(string) == "“Adobe illustrator” se ha añadido a tu carrito."
    end
    