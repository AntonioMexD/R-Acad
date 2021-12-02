Feature:  Subscribe
  As a user
  I want to subscribe in the page
  So that I can received promotions


  Scenario: Subscribe successfully
    Given I am on the R-acad homepage
    When I fill the subscribe fields with the information as shown as below
      | Correo: | test.ucb.calidad@gmail.com |
      | Nombre: | testUcb                    |
    And I click on the “Enviar” button
    Then I should see the message “The form was sent successfully.”