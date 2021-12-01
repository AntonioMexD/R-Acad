class Inicio
	include RSpec::Matchers
	include Capybara::DSL

    def compareTitles(table)
        data = table.rows_hash
        data.each_pair do |key, value|
            case key
              when "curso1:"
                find('#ld-course-list-content-6bff6326b614b5f92cd2dac85b7a4e01 > div > div:nth-child(1) > div > div.bb-card-course-details > h2 > a') == "Curso"
              when "curso2:"
                find('#ld-course-list-content-6bff6326b614b5f92cd2dac85b7a4e01 > div > div:nth-child(2) > div > div.bb-card-course-details > h2 > a') == "Word"
              when "curso3:"
                find('#ld-course-list-content-6bff6326b614b5f92cd2dac85b7a4e01 > div > div:nth-child(3) > div > div.bb-card-course-details > h2 > a') == "Excel"
              when "curso4:"
                find('#ld-course-list-content-6bff6326b614b5f92cd2dac85b7a4e01 > div > div:nth-child(4) > div > div.bb-card-course-details > h2 > a') == "Hacer un estudio de grabacion"
              when "curso5:"
                find('#ld-course-list-content-6bff6326b614b5f92cd2dac85b7a4e01 > div > div:nth-child(5) > div > div.bb-card-course-details > h2 > a') == "Como decorar con neón"
              when "curso6:"
                find('#ld-course-list-content-6bff6326b614b5f92cd2dac85b7a4e01 > div > div:nth-child(6) > div > div.bb-card-course-details > h2 > a') == "Adobe illustrator"
              when "curso7:"
                find('#ld-course-list-content-6bff6326b614b5f92cd2dac85b7a4e01 > div > div:nth-child(7) > div > div.bb-card-course-details > h2 > a') == "Como hacer milkshakes"
              when "curso8:"
                find('#ld-course-list-content-6bff6326b614b5f92cd2dac85b7a4e01 > div > div:nth-child(8) > div > div.bb-card-course-details > h2 > a') == "Curso de edición de video con Vegas Pro"
              when "curso9:"
                find('#ld-course-list-content-6bff6326b614b5f92cd2dac85b7a4e01 > div > div:nth-child(9) > div > div.bb-card-course-details > h2 > a') == "Curso completo de Photoshop desde Cero"
              when "curso10:"
                find('#ld-course-list-content-6bff6326b614b5f92cd2dac85b7a4e01 > div > div:nth-child(10) > div > div.bb-card-course-details > h2 > a') == "Curso básico de Robótica con Arduino"
            end 
        end
    end
end