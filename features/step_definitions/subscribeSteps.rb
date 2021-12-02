Before do
  @subscribe = Subscribe.new
end

When('I fill the subscribe fields with the information as shown as below') do |table|
  @subscribe.fillSubscribe(table)
end

When('I click on the “Enviar” button') do
  button="#post-1024 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-1ff7d906.elementor-section-full_width.elementor-section-height-min-height.elementor-section-items-stretch.elementor-section-content-middle.elementor-section-stretched.elementor-section-height-default > div > div > div.elementor-column.elementor-col-66.elementor-top-column.elementor-element.elementor-element-3360e39f > div > div.elementor-widget-wrap > div.elementor-element.elementor-element-36f18248.elementor-button-align-start.elementor-mobile-button-align-stretch.elementor-widget.elementor-widget-form > div > form > div.elementor-form-fields-wrapper.elementor-labels- > div.elementor-field-group.elementor-column.elementor-field-type-submit.elementor-col-20.e-form__buttons > button"
    find(:css,button).click
end

Then('I should see the message “The form was sent successfully.”') do
  message="#post-1024 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-1ff7d906.elementor-section-full_width.elementor-section-height-min-height.elementor-section-items-stretch.elementor-section-content-middle.elementor-section-stretched.elementor-section-height-default > div > div > div.elementor-column.elementor-col-66.elementor-top-column.elementor-element.elementor-element-3360e39f > div > div.elementor-widget-wrap > div.elementor-element.elementor-element-36f18248.elementor-button-align-start.elementor-mobile-button-align-stretch.elementor-widget.elementor-widget-form > div > form > div.elementor-message.elementor-message-success"
  find(message) == "The form was sent successfully."
end