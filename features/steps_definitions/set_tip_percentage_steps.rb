Given(/^I am in the app settings page$/) do
  @tip_calculator_page = $ENV::TipCalculatorPage.new($driver)
  @tip_calculator_page.settings_button.click
  @settings_page = $ENV::SettingsPage.new($driver)
end

When /^I enter a valid percentage amount$/ do
  @settings_page.tip_percentage_edit_text.clear
  @settings_page.tip_percentage_edit_text.send_keys('20')
end

And /^I click Save settings button$/ do
  @settings_page.save_button.click
end

And /^I go back to calculate tip page$/ do
  @settings_page.press_device_back
end

Then /^I should see the new tip percentage value$/ do
  expect(@tip_calculator_page.tip_percentage_text.text).to eql('20%')	 
end
