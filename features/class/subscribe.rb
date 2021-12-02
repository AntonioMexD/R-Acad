class Subscribe
	include RSpec::Matchers
	include Capybara::DSL

  def fillSubscribe(table)
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
          when "Nombre:"
            find('#form-field-field_3c47c31').set("testUcb")
          when "Correo:"
            find('#form-field-email').set("test.ucb.calidad@gmail.com")
        end
    end
end

end