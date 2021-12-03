  Given('I enter to preferencias de correo electronico') do
    button = "#notifications"
    find(:css, button).click
    end
  
  Given('I update my preferences with the information as shown as below') do |table|
    data = table.rows_hash
        data.each_pair do |key, value|
            case key
              when "Un miembro te invita a unirte a una experiencia"
                find('#groups-notification-settings-invitation > td.no > div > label').click
            when "La información de la experiencia está actualizada"
                find('#groups-notification-settings-info-updated > td.yes > div > label').click
            when "Usted es promovido a organizador o moderador de experiencia"
                find('#groups-notification-settings-promoted > td.no > div > label').click
            when "Un miembro solicita unirse a una experiencia privada que usted organiza"
                find('#groups-notification-settings-request-completed > td.no > div > label').click
            when "A Zoom meeting has been scheduled in one of your groups"
                find('#groups-notification-settings-zoom-meeting-scheduled > td.no > div > label').click
            when "A Zoom webinar has been scheduled in one of your groups"
                find('#groups-notification-settings-zoom-webinar-scheduled > td.yes > div > label').click
            end 
        end
  end
  
  Then('I veryfy mi mail account') do
    to be implemented # to be implemented the email verification
  end

  When('I enter to privacidad page') do
    button = "#profile"
    find(:css, button).click
    end


  When('I update Apellido from public to private') do
    find(:css,"#field_2_visibility").find(:css, "#field_2_visibility > option:nth-child(3)").select_option
  end
  
  When('I should see a message on the top of the screen that says La configuración de su perfil se ha guardado.') do
    message="#item-header > aside > p"
    find(message) == "La configuración de su perfil se ha guardado."
  end