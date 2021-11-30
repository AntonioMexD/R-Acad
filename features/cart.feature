Feature: Shopping cart
    As an user
    I want to add a course to the cart
    So that I can buy and study

@cc
Scenario: Add to cart
    Given I am on the R-acad homepage
    When I click the "Cursos" button
    Then I should see the "Todos Cursos"
    When I click on "Como hacer milkshakes"
    And I click on "Apuntarme" button
    And I click on "Añadir al carrito" button yellow
    Then I should see the next alert message "“Como hacer milkshakes” se ha añadido a tu carrito."

    