Feature: Register on the page
  As a user interested in online courses
  I want to register on the page
  So that I get courses


  Scenario: Register on Rottweiler Academy successfully
    Given I navigate to Register page
    When I fill the fields with the information as shown as below
      | Correo electronico:   | estebUcb@gmail.com |
      | contraseña:           | 123456               |
      | confirmar contraseña: | 123456               |
      | Nombre:               | Esteban              |
      | Apellido:             | UCB test             |
      | Nombre de usuario:    | estebUcb               |
    And I click on “Crear una cuenta” button
    Then I should see a message that say “Antes de que pueda iniciar sesión, debe confirmar su dirección de correo electrónico a través del correo electrónico que le acabamos de enviar.”
    And I should see the confirmation mail
