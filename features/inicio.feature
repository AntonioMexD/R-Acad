Feature: View Courses
  As an user
  I want to see the courses from Inicio page
  So that I can see the courses that I like and decide if I register in the web

  Scenario: See all courses
    Given I am on the R-acad Home Page
    When I click the “Inicio” button
    Then I should see courses on offer
      | curso1:   | Curso                                   |
      | curso2:   | Word                                    |
      | curso3:   | Excel                                   |
      | curso4:   | Hacer un estudio de grabacion           |
      | curso5:   | Como decorar con neón                   |
      | curso6:   | Adobe illustrator                       |
      | curso7:   | Como hacer milkshakes                   |
      | curso8:   | Curso de edición de video con Vegas Pro |
      | curso9:   | Curso completo de Photoshop desde Cero  |
      | curso710: | Curso básico de Robótica con Arduino    |

  @soc
  Scenario: See one course
    Given I am on the R-acad Home Page
    When I click the “Inicio” button
    And I click on Word course
    Then I should see the detail of the course
      | courseName:     | Word      |
      | instructorName: | Sebastián |
      | content:        | 1 Lección  |