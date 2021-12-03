Feature: Update credentials
  As a logged user
  I send messages
  So that I can comunicate with other participants

Scenario: see messages
    Given Im logged in r-acad
    When I navigate messages page
    Then I should see my messages list