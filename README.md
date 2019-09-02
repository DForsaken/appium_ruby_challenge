# appium_ruby_challenge

Challenge project using Appium with Ruby and Cucumber for Mobile automation testing. 

#### Prerequisites

* MacOS
* Appium 1.8.0
* Ruby 2.6
* Android SDK

For appium:
brew install -g node
npm install -g appium@1.8.0 --no-shrinkwrap
npm install -g wd

#### Setup
* git clone git@github.com:DForsaken/appium_ruby_challenge.git
* bundle install
* Edit uuid and platformVersion in features/support/config/appium.txt to your device / emulator specifics
  uuid = "emulator-5556"
  platformVersion = "6.0"

  You can get this information by running 
  platformVersion -> adb get-serialno
  uuid -> adb shell getprop ro.build.version.release

* Need to have Appium server running on default configuration
  Host: 0.0.0.0
  Port: 4723 

#### Run

* bundle exec cucumber
