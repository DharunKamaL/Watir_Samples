require 'watir'

browser = Watir::Browser.new:chrome

browser.goto('https://www.saucedemo.com/')
puts ("Browser launched and also the webpage")
browser.window.maximize
title = browser.title
puts ("The title of the webpage is "+title.to_s)
sleep(3)
# browser.screenshot().save("launch_page.png") 
# puts browser.html()
browser.refresh
# browser.window().resize_to(800,600)
# browser.window().move_to(200,500)
browser.execute_script("window.alert('Alert from watir');")
sleep(3)
browser.alert.ok
sleep(3)