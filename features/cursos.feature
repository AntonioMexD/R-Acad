Feature: View Courses
    As an user
    I want to see the courses
    So that I can see the courses

Background:
    Given I am on the R-acad homepage

Scenario: See one course (register user)
    Given I click the "Cursos" button
    Then I should see the "Todos Cursos"
    When I click on "Como hacer milkshakes"
    Then I should see the next message "En este curso aprenderás a como hacer milkshakes"

Scenario: go to courses from the card - (unregister user)
    Given I click the "Cursos" cart
    Then I should see the "Todos Cursos"

Scenario: See detail of a course to start - (unregister user)
    Given I clicked on the name of the course "Marketing Digital"
    Then I should see the course information 