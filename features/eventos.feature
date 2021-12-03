Feature: View eventos
  As an user that want to have a good time
  I want to see eventos
  So that I can see events that I can participate

  Scenario: See all events
    Given I am on the R-acad Home Page
    When I click on Eventos button
    And I click on Eventos anteriores
    Then I shoul see a list of events

  Scenario: See one event
    Given I am on the R-acad Home Page
    When I click on Eventos button
    And I click on Eventos anteriores
    And I click on a course
    Then I shoud see the detail of the course
    