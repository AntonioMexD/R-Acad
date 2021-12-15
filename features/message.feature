Feature: view messages
  As a logged user of R-Acad
  I watch my messages
  So that I can be aware of the messages I receive

Scenario: view messages
    Given Im logged in r-acad
    When I navigate messages page
    Then I should see my messages list