Feature:  Logout account
  As a registered user R-Acad
  I want to logout of my account
  So that Someone else don't use my account


  Scenario: Logout successful
    Given Im logged in r-acad
    And I click on my user name 
    When I click on Cierre de sesion button
    Then I should see the Home page