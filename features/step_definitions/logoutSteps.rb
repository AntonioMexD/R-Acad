Given('I click on my user name') do
  button="#header-aside > div > div.user-wrap.user-wrap-container.menu-item-has-children > a"
    find(:css,button).click
end

When('I click on Cierre de sesion button') do
  button="#header-aside > div > div.user-wrap.user-wrap-container.menu-item-has-children.selected > div > div > ul > li.logout-link > a"
  find(:css,button).click
end