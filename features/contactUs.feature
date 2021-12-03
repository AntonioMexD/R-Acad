Feature:  Subscribe
  As a user interested in online courses
  I want to subscribe in the page
  So that I can received promotions


  Scenario: Subscribe successfully
    Given I am on the R-acad Unirse Page
    When I fill the contact fields with the information as shown as below
      | Correo Electronico: | test.ucb.calidad@gmail.com                   |
      | Nombre completo:    | Test Ucb Calidad                             |
      | Numero de celular:  | 12345678                                     |
      | Mensaje:            | Quiero saber si los cursos son reembolsables |
    And I click on the “Hecho” button
    Then I should see the message "El formulario ha sido enviado con éxito a test.ucb.calidad@gmail.com ¡mantente pendiente!"