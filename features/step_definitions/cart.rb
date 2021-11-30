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
        find(string) == "En este curso aprenderás a como hacer milkshakes"
    end