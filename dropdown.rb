require 'watir'
require "test/unit/assertions"
include Test::Unit::Assertions

browser = Watir::Browser.new:chrome
browser.goto("https://demo.seleniumeasy.com/basic-select-dropdown-demo.html")
browser.window.maximize
dropdown = browser.select_list(:xpath => "//select[@id='select-demo']")
dropdown.select("Sunday")
is_visible = browser.element(:xpath => "//p[@class='selected-value']")
assert_true(is_visible.visible?,"Not visible")
sleep(5)
multi_dropdown = browser.select_list(:xpath => "//select[@id='multi-select']")
multi_dropdown.select("California")
multi_dropdown.select("New York")
selected_option = multi_dropdown.selected_options[0].text
puts "Selected option in dropdown is: #{selected_option}"
browser.button(:xpath => "//button[@id='printMe']").click
selected_opt = browser.element(:xpath => "//p[@class='getall-selected']")
sleep(5)
assert_equal("First selected option is : New York", selected_opt.text,"Text not matching")