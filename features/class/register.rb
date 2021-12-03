class Register
	include RSpec::Matchers
	include Capybara::DSL

	def enterBrowser
		page.driver.browser.manage.window.maximize
		visit('')
	end

    def enterRegisterPage
		page.driver.browser.manage.window.maximize
		visit('/registro/')
	end

  def fillFields(table)
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
          when "Correo electronico:"
            find('#signup_email').set("estebUcbCal@gmail.com")
          when "contraseña:"
            find('#signup_password').set("123456")
          when "confirmar contraseña:"
            find('#signup_password_confirm').set('123456')
          when "Nombre:"
            find('#field_1').set('Esteban')
          when "Apellido:"
            find('#field_2').set('UCB test')
          when "Nombre de usuario:"
            find('#field_3').set('estebUcbCal123')
        end 
    end
end

	def clickRegisterButton
      click_on ('signup_submit')
	end

end