class User
	include RSpec::Matchers
	include Capybara::DSL
	def enterWebPage
		page.driver.browser.manage.window.maximize
		visit('')
	end

    def enterLoginPage
		page.driver.browser.manage.window.maximize
		visit('/wp-login.php')
	end

    def fillCredentials
        fill_in 'log', :with => ENV['USER'] 
	 	fill_in 'pwd', :with => ENV['PSW'] 
    end
	
	def isLogged
        actualPage = page.evaluate_script("window.location.href").to_s
        expect(actualPage).to eq "https://www.r-acad.com/"
	end

	def clickLoginButton
        click_on ('wp-submit')
	end

	def login
        enterLoginPage
        fillCredentials
        clickLoginButton
	 	isLogged
	end

end