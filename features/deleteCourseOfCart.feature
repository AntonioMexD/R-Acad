Feature: Shopping cart
    As an user of R-Acad
    I want to remove a course from the cart
    Entonces, como quiero comprar otro curso

Scenario: Delete a course from the cart
    Given I am on the R-acad Home Page
    Given I have one course added in the shopping cart
    Then I press on Icon Shopping Cart
    And I press on Ver Carrito Label
    And I press on Icon Delete
    Then I should see the next Message of alert "“Como hacer milkshakes” eliminado."