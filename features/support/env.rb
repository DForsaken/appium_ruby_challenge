require 'appium_lib'
require 'cucumber/ast'
require 'test/unit/assertions'
require 'rspec/expectations'

caps = Appium.load_appium_txt file: File.expand_path('../config/appium.txt', __FILE__), verbose: true
caps[:caps].merge!(fullReset: true)

class AppiumWorld
end

Dir['./features/pages/android/*.rb'].each { |file| require file }
$ENV = Android

Appium::Driver.new(caps, true)
Appium.promote_appium_methods AppiumWorld

World(Test::Unit::Assertions)

World do
  AppiumWorld.new
end

Before do |scenario|
  puts 'Starting Android driver'
  $driver.start_driver
end

After do |scenario|
  if scenario.failed?
    puts 'Test case failed'
    $driver.driver_quit
  end
end
