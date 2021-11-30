Feature: View Courses
    As an user
    I want to see the courses
    So that I can see the courses

Scenario: See all courses
    Given I am on the R-acad homepage
    When I click the "Cursos" button
    Then I should see the "Todos Cursos"

Scenario: See one course
    Given I am on the R-acad homepage
    When I click the "Cursos" button
    Then I should see the "Todos Cursos"
    When I click on "Como hacer milkshakes"
    Then I should see the next message "En este curso aprenderás a como hacer milkshakes"
