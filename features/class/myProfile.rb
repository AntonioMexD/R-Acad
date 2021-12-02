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
            when "content:"
              find('#learndash_post_702 > div > div.bb-grid > div.bb-single-course-sidebar.bb-preview-wrap > div.bb-ld-sticky-sidebar.is_stuck > div > div.bb-course-preview-content > div.bb-course-volume > ul > li') == "1 Lección"
          end 
      end
  end
end