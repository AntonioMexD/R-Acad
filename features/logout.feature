Feature:  Login account
  As a registered user R-Acad
  I want to lout of my account
  So that Someone else don't use my account


  Scenario: Login successful
    Given Im logged in r-acad
    And I click on my user name 
    When I click on Cierre de sesion button
    Then I should see the Home page