Feature: Shopping cart
    As an user
    I want to see the shopping cart
    So to see what products I have in the cart.

Scenario: View Shopping Cart
    Given I am logged user in R-Acad
    Given I have one course added in the shopping cart
    Then I press on Icon Shopping Cart
    And I press on Ver Carrito Label
    Then I should see the name course I added
