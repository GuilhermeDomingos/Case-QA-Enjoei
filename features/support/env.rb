require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 25
end

Capybara.page.driver.browser.manage.window.maximize

