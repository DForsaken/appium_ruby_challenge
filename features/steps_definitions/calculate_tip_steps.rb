Given(/^I am in the calculate tip page$/) do
  @tip_calculator_page = $ENV::TipCalculatorPage.new($driver)
end

When /^I enter a valid bill amount$/ do
  @tip_calculator_page.bill_amount_edit_text.send_keys('100')
end

And /^I click Calculate tip button$/ do
  @tip_calculator_page.calculate_tip_button.click
end

Then /^I should see the correct total amount$/ do
  expect(@tip_calculator_page.total_amount_text.text).to eql('$115.00')	 
end
