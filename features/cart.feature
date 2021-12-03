Feature: Course added shopping cart
    As an user
    I want to add a course to the cart
    So that I can buy and study

@curso
Scenario: Add to cart
    Given I am on the R-acad homepage
    When I click the "Cursos" button
    Then I should see the "Todos Cursos"
    When I click on "Como hacer milkshakes"
    And I click on "Apuntarme" button
    And I click on "Añadir al carrito" button yellow
    Then I should see the next alert message "“Como hacer milkshakes” se ha añadido a tu carrito."

Scenario: Add to cart failed
    Given I am on the R-acad homepage
    When I click the "Cursos" button
    Then I should see the "Todos Cursos"
    When I press on "Adobe illustrator"
    And I click on "Apuntarme" button
    And I click on "Añadir al carrito" button yellow
    Then I should see the alert message "Adobe illustrator” se ha añadido a tu carrito."

Scenario: View Product in the Shopping Cart
    Given I am on the R-acad homepage
    When I click the "Cursos" button
    Then I should see the "Todos Cursos"
    When I click on "Como hacer milkshakes"
    And I click on "Apuntarme" button
    And I click on "Añadir al carrito" button yellow
    And I click on "Ver carrito" button text
    Then I should see the name of the product that I added