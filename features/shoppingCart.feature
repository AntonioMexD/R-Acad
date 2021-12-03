Feature: Shopping cart
    As an registered user
    I want to see the shopping cart
    So to see what products I have in the cart.

Background: 
    Given I am logged user in R-Acad

Scenario: View Shopping Cart
    Given I have one course added in the shopping cart
    Then I press on Icon Shopping Cart
    And I press on Ver Carrito Label
    Then I should see the name course I added

@totalPrice
Scenario: See total price of the courses in the cart
    Given I have one course added in the shopping cart
    Then I press on Icon Shopping Cart
    And I press on Ver Carrito Label
    Then I should see the total price "1.00Bs."
