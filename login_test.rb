require 'watir'

browser = Watir::Browser.new:chrome
browser.goto "https://the-internet.herokuapp.com/login"
browser.window.maximize
user_name = browser.text_field(:xpath=>"//input[@name='username']")
user_name.set "tomsmith"
password = browser.text_field(:xpath=>"//input[@name='password']")
password.set "SuperSecretPassword!"
btn = browser.button(:xpath=>"//button[@type='submit']")
btn.click
sleep(5)