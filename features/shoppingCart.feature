Feature: Shopping cart
    As an registered user R-Acad
    I want to see the total price in shopping cart
    So to see the price in the cart.

Scenario: View Price Course Shopping Cart
    Given I am on the R-acad Home Page
    When I click the "Cursos" button
    And I click on "Como hacer milkshakes"
    And I click on "Apuntarme" button
    And I click on "Añadir al carrito" button yellow
    Then I press on Icon Shopping Cart
    And I press on Ver Carrito Label
    And I should see the name course I added
    Then I should see the total price "1.00Bs."

