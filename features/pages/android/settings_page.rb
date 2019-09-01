require './features/pages/base_page'

module Android
  class SettingsPage < BasePage

    attr_reader :driver
		
	def initialize(driver)
	  super(driver)
	end

	def tip_percentage_edit_text; $driver.find_element(:id, 'tipPercentageEditText') end

	def save_button; $driver.find_element(:id,'saveSettingsButton') end

  end
end
