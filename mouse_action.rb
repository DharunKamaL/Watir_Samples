require 'watir'

browser = Watir::Browser.new:chrome
browser.goto("https://demo.opencart.com/")
browser.window.maximize
menu = browser.element(:xpath => "//a[text()='Components']")
browser.driver.action.move_to(menu).perform
sleep(3)