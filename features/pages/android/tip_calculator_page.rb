require './features/pages/base_page'

module Android
  class TipCalculatorPage < BasePage
    attr_reader :driver
		
	def initialize(driver)
	  super(driver)
	end

	def settings_button; $driver.find_element(:id, 'menu_settings') end

	def bill_amount_edit_text; $driver.find_element(:id,'billAmtEditText') end

	def total_amount_text; $driver.find_element(:id,'totalAmtTextView') end

	def tip_percentage_text; $driver.find_element(:id,'tipPctTextView') end

	def calculate_tip_button; $driver.find_element(:id,'calcTipButton') end

  end
end
