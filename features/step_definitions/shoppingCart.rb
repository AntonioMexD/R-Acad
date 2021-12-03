Before do
    @myCart = MyCart.new
    @user = User.new
end

After do
    @myCart.deleteAddedCourse
end

Given('I am logged user in R-Acad') do
    @user.login
  end
Given('I have one course added in the shopping cart') do
    @myCart.addCourseToCart
  end
  
  Then('I press on Icon Shopping Cart') do
    iconShoppingCart = "#header-aside > div > div.notification-wrap.header-cart-link-wrap.cart-wrap.menu-item-has-children > a > span > i"
    find(:css, iconShoppingCart).click
  end
  
  Then('I press on Ver Carrito Label') do
    label = "#header-aside > div > div.notification-wrap.header-cart-link-wrap.cart-wrap.menu-item-has-children.selected > section > div > p.woocommerce-mini-cart__buttons.buttons > a:nth-child(1)"
    find(:css, label).click
  end
  
  Then('I should see the name course I added') do
    nameCourse = "#post-29 > div > div > form > table > tbody > tr:nth-child(1) > td.product-name > a"
    find(nameCourse) == "Como hacer milkshakes"
  end

  Then('I should not see courses') do
    pending # Write code here that turns the phrase above into concrete actions
  end

  Then('I press on Icon Delete') do
    iconButton = "#post-29 > div > div > form > table > tbody > tr.woocommerce-cart-form__cart-item.cart_item > td.product-remove > a"
    find(:css, iconButton).click
  end

  Then('I should see the next Message of alert {string}') do |string|
    messageDelete = "#post-29 > div > div > div > div"
    find(messageDelete) == "“Como hacer milkshakes” eliminado."
  end

  Then('I should see the total price {string}') do |string|
    totalPrice = "#post-29 > div > div > div.cart-collaterals > div > table > tbody > tr.order-total > td > strong > span > bdi"
    find(totalPrice) == string
  end