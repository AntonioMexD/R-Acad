Feature:  Login account
    As a registered user
    I want to login with my account 
    So that Ican verify the login


Scenario: Login successful
    Given  I navigate R-acad login page
    And I enter my credentials 
    When I click "Iniciar Sesión" button
    Then I should see the Home page