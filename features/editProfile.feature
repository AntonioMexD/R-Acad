Feature:  Edit my profile
  As a registered user
  I want to change my personal information
  So that I can change it if there is an error in my information

  @editProfile
  Scenario: Edit My name, last name and user name
    Given Im logged in r-acad
    And I click on Mi Perfil option
    When I click on “Editar Perfil” button
    And I fill the personal information fields with the information as shown as below
      | Nombre:            | Ucb Test |
      | Apellido:          | Cal      |
      | Nombre de Usuario: | UcbCal   |
    And I click on “Guardar los cambios” option
    Then I should see a message on the top of the screen that says “Cambios guardados.”
    And I should see my new name in the upper right corner