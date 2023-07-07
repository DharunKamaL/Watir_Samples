require 'watir'

browser = Watir::Browser.new:chrome
browser.goto "https://demo.seleniumeasy.com/javascript-alert-box-demo.html"
browser.window.maximize
browser.button(:xpath => "(//button[contains(text(),'Click me!')])[1]").click
sleep(3)
browser.alert.ok
sleep(3)