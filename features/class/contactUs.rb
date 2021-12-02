class ContactUs
	include RSpec::Matchers
	include Capybara::DSL

  def enterUnirsePage
		page.driver.browser.manage.window.maximize
		visit('/unirse')
	end

  def fillContact(table)
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
          when "Nombre completo:"
            find('#nf-field-6').set("Test Ucb Calidad")
          when "Correo Electronico:"
            find('#nf-field-7').set("test.ucb.calidad@gmail.com")
          when "Numero de celular:"
            find('#nf-field-10').set("12345678")
          when "Mensaje:"
            find('#nf-field-8').set("Quiero saber si los cursos son reembolsables")
        end
    end
end

end