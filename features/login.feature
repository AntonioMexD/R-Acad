Feature:  Login account
    As a user
    I want to login with my account 
    So that I can see the user options


Scenario: Login successful
    Given  I navigate R-acad login page
    And I enter my credentials 
    When I click "Iniciar Sesión" button
    Then I should see the Home page