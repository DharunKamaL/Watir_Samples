require 'watir'

browser = Watir::Browser.new:chrome
browser.goto("https://www.saucedemo.com/")
browser.window.maximize
browser.execute_script("window.alert('Dismiss alert');")
sleep(3)
browser.alert.close
sleep(3)