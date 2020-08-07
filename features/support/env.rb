require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'
require 'capybara'

Capybara.default_driver = :selenium_chrome

Capybara.default_max_wait_time = 10