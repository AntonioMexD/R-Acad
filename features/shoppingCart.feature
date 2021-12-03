Feature: Shopping cart
    As an registered user R-Acad
    I want to see the total price in shopping cart
    So to see the price in the cart.

Background: 
    Given I am logged user in R-Acad

Scenario: View Shopping Cart
    Given I have one course added in the shopping cart
    Then I press on Icon Shopping Cart
    And I press on Ver Carrito Label
    And I should see the name course I added
    Then I should see the total price "1.00Bs."

