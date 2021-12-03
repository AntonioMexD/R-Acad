Feature: Update credentials
  As a registered user
  I want to update my credentials
  So that my account is more secure

@changePassword
Scenario: Update password
    Given Im logged in r-acad
    When I navigate to Mi Cuenta page
    And I fill the passwords fields with the information as shown as below
            | Current Password:             | test123   |
            | Agregue su nueva contraseña:  | test12345 |
            | Repita su nueva contraseña:   | test12345 |
    And I click in “Guardar los cambios” button
    Then I should see a message on the top of the screen that says “Su configuración ha sido guardada.”
