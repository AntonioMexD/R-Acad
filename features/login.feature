Feature:  Login account
    As a registered user R-Acad
    I want to login with my account 
    So that Ican verify the login


Scenario: Login successful
    Given  I navigate R-acad login page
    And I enter my credentials 
    When I click "Iniciar Sesión" button
    Then I should see the Home page
    And I should see my name in the upper right corner