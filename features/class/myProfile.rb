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

    def compareContent(table)
      data = table.rows_hash
      data.each_pair do |key, value|
          case key
            when "courseName:"
              find('#learndash_post_702 > div > div.bb-vw-container.bb-learndash-banner > div > div > div > h1') == "Curso"
            when "instructorName:"
              find('#learndash_post_702 > div > div.bb-grid > div.bb-learndash-content-wrap > div.bb-about-instructor.bb-about-instructor--is-info > div > div.bb-instructor-wrap.flex > div.bb-content-wrap > h5 > a') == "Sebastián"
          end 
      end
  end


  def resetFields
    find('#field_1').set("Test ucb")
    find('#field_2').set("calidad")
    find('#field_3').set('testUcb')
  end

  def clickButton(string)
    button=string
    find(:css,button).click
  end

  def resetData
    resetFields
    clickButton("#profile-group-edit-submit")
  end

end