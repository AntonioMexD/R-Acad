Feature: Course added shopping cart
    As a user interested in online courses
    I want to fill out the purchase form
    So, in order to buy the course

Scenario: See the purchase form
    Given I am on the R-acad homepage
    And I have one course added in the shopping cart
    Then I press on Icon Shopping Cart
    And I press on Ver Carrito Label
    And I press on Ver Finalizar Compra button
    Then I should see the fields to fill out at checkout

