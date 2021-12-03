class MyCart
    include RSpec::Matchers
	include Capybara::DSL

    def goCourses
        button = "#menu-item-196 > a"
        find(:css, button).click
    end    

    def viewAllCourses
        page = "#courses-all > a"
        find(:css, page).click
    end

    def pressToButtonAdded
        string = "#course-dir-list > ul > li:nth-child(3) > div > div.bb-card-course-details > h2 > a"
        find(:css, string).click
    end

    def detailCourse
        string = "#ld-tab-content-485 > p"
        find(string) == "En este curso aprenderás a como hacer milkshakes"
    end

    def addToCart
        string = "#btn-join"
        find(:css, string).click

        string = "#product-856 > div.summary.entry-summary > form > button"
        find(:css, string).click 

    end

    def validateMessage
        string = "#main > div.woocommerce-notices-wrapper > div"
        find(string) == "“Como hacer milkshakes” se ha añadido a tu carrito."
    end

    def deleteAddedCourse
        iconButton = "#header-aside > div > div.notification-wrap.header-cart-link-wrap.cart-wrap.menu-item-has-children > a > span > i"
        find(:css, iconButton).click
        buttonDelete = "#header-aside > div > div.notification-wrap.header-cart-link-wrap.cart-wrap.menu-item-has-children.selected > section > div > ul > li > a.remove.remove_from_cart_button"
        find(:css, buttonDelete).click
    end

    def addCourseToCart
        goCourses
        viewAllCourses
        pressToButtonAdded
        detailCourse
        addToCart
        validateMessage
    end

end