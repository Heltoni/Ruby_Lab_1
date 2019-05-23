#require 'rspec'
#require 'httparty'
require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)    
end

Capybara.configure do |config|
    config.default_driver = :chrome
    config.default_max_wait_time = 10    
	#config.app_host   = 'https://www.google.com.br'
end

Capybara.page.driver.browser.manage.window.maximize