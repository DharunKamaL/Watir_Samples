require 'watir'

browser= Watir::Browser.new:chrome
browser.goto("https://demo.seleniumeasy.com/basic-radiobutton-demo.html")
browser.window.maximize
input_radio = browser.radio(:xpath => "(//input[@value='Male'])[1]")
input_radio.set
puts "The radio button is cliked(after click):#{input_radio.set?}"
browser.button(:xpath => "//button[contains(text(),'Checked')]").click
is_visible = browser.element(:xpath => "//p[contains(text(),'checked')]")
puts is_visible.visible?
# input_radio.unset
# puts "The radio button is clicked(before click):#{input_radio.set?}"