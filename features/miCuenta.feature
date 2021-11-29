Feature: Update credentials
  As a user
  I want to update my credentials
  So that my account is more secure

Scenario: Update password
    Given I navigate R-acad web page
    When I type in “current password” field "test123"
    And I type in “agregue su nueva contraseña” field “test12345”
    And I type in “repita su nueva contraseña” field “test12345”
    And I click in “Guardar los cambios” button
    Then I should see a message on the top of the screen that says “Su configuración ha sido guardada”
