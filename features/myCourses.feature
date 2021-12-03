Feature: View my Courses
  As an user
  I want to see my courses
  So that I can pass my courses

  Scenario: See all my courses
    Given Im logged in r-acad
    And I click on Mi Perfil option
    When I click on “Cursos” option
    Then I should see my courses

  @smc
  Scenario: See the detail of my courses
    Given Im logged in r-acad
    And I click on Mi Perfil option
    And I click on “Cursos” option
    When I click on “Curso” course
    Then I should see the detail of the my course
      | courseName:     | Curso     |
      | instructorName: | Sebastián |
