Feature:  Contact 
  As a user interested in contact R-acad
  I want to contact to the administrator
  So that I can receive more information about their services


  Scenario: contact R-acad
    Given I am on the R-acad Unirse Page
    When I fill the contact fields with the information as shown as below
      | Correo Electronico: | test.ucb.calidad@gmail.com                   |
      | Nombre completo:    | Test Ucb Calidad                             |
      | Numero de celular:  | 12345678                                     |
      | Mensaje:            | Quiero saber si los cursos son reembolsables |
    And I click on the “Hecho” button
    Then I should see the message "El formulario ha sido enviado con éxito a test.ucb.calidad@gmail.com ¡mantente pendiente!"