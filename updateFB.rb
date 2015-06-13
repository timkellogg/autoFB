require 'rubygems'
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
driver.get "https://facebook.com"

print 'email:'
email = gets.chomp!

print 'password:'
password = gets.chomp!

email_field = driver.find_element :name => "email"
email_field.send_keys "#{email}"

password_field = driver.find_element :name => "pass"
password_field.send_keys "#{password}"

password_field.submit()
driver.quit
