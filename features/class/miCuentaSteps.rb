class MiCuentaSteps
	include RSpec::Matchers
	include Capybara::DSL

    def fillPasswords(table)
        data = table.rows_hash
        data.each_pair do |key, value|
            case key
              when "Current Password:"
                find('#pwd').set(ENV['PSW'])
              when "Agregue su nueva contraseña:"
                find('#pass1').set("test12345")
              when "Repita su nueva contraseña:"
                find('#pass2').set('test12345')
            end
        end
    end
end