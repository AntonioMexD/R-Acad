Feature: Update preferenes
  As a user
  I want to change my account preferences
  So I can show and retrive the information that I want from the website

Scenario: Update password
    Given Im logged in r-acad
    When I navigate to Mi Cuenta page
    And I enter to preferencias de correo electronico  
    And I update my preferences with the information as shown as below
            | Un miembro te invita a unirte a una experiencia                                     | Si |
            | La información de la experiencia está actualizada                                   | No |
            | Usted es promovido a organizador o moderador de experiencia                         | Si |
            | Un miembro solicita unirse a una experiencia privada que usted organiza             | No |
            | Su solicitud para unirse a una experiencia ha sido aprobada o denegada              | Si |
            | A Zoom meeting has been scheduled in one of your groups                             | No |
            | A Zoom webinar has been scheduled in one of your groups                             | Si |
    And I click in “Guardar los cambios” button
    And I should see a message on the top of the screen that says “Su configuración ha sido guardada.”
    Then I veryfy mi mail account
@mg
    Scenario: update privacity
    Given Im logged in r-acad
    When I navigate to Mi Cuenta page
    And I enter to privacidad page  
    And I update Apellido from public to private
    And I click in “Guardar los cambios” button
    And I should see a message on the top of the screen that says La configuración de su perfil se ha guardado.   