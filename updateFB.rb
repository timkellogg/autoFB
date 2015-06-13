require 'rubygems'
require 'selenium-webdriver'

# Get user email 
print 'email:'
email = gets.chomp!

# Get user password 
print 'password:'
password = gets.chomp!

# Get user status 
print 'Status Update to Make'
status = gets.chomp!

# Set driver to Selenium for firefox & get address
driver = Selenium::WebDriver.for :firefox
driver.get "https://facebook.com"

# Input email 
email_field = driver.find_element :name => "email"
email_field.send_keys "#{email}"

# Input password 
password_field = driver.find_element :name => "pass"
password_field.send_keys "#{password}"
password_field.submit()

# Input status 
status_box = driver.find_element :name => "xhpc_message"
status_box.send_keys "#{status}"
status_box.submit()

wait = Selenium::WebDriver::Wait.new(:timeout => 10)
driver.quit
