class BasePage
  attr_accessor :driver

  def initialize(driver)
    @driver = driver
  end

  def press_device_back
  	@driver.back
  end

end
