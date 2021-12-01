class MyProfile
	include RSpec::Matchers
	include Capybara::DSL

    def fillPersonalInformation(table)
        data = table.rows_hash
        data.each_pair do |key, value|
            case key
              when "Nombre:"
                find('#field_1').set("Ucb Test")
              when "Apellido:"
                find('#field_2').set("Cal")
              when "Nombre de Usuario:"
                find('#field_3').set('UcbCal')
            end
        end
    end
end