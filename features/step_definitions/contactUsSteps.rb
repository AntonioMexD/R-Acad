Before do
  @contactUs = ContactUs.new
end

Given('I am on the R-acad Unirse Page') do
  @contactUs.enterUnirsePage
end

When('I fill the contact fields with the information as shown as below') do |table|
  @contactUs.fillContact(table)
end

When('I click on the “Hecho” button') do
  button="#nf-field-9"
  find(:css,button).click
end

Then('I should see the message {string}') do |string|
  message="#nf-form-2-cont > div > div.nf-response-msg > p"
  find(message) == string
end