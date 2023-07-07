require 'watir'
require "test/unit/assertions"
include Test::Unit::Assertions

browser = Watir::Browser.new:chrome
browser.goto("https://stqatools.com/demo/Windows.php")
browser.window.maximize
parent_window = browser.window(:title => "STQATOOLS DEMO")
new_tab = browser.button(:xpath => "//button[contains(text(),'Tab')]")
new_tab.click
sleep(3)
new_window = browser.window(:title => "SELENIUM WebDriver Tutorials with java for Automation Testing")
new_window.use do
    element = browser.element(:xpath => "(//span[text()='TestNG'])[1]")
    element.click
    menu = browser.button(:xpath => "(//button[@class='bellows-subtoggle'])[1]")
    menu.click
    installation_text = browser.element(:xpath => "//span[text()='TestNG | Installation in Eclipse']")
    browser.wait_until(timeout:5) do
        installation_text.present?
    end
    assert_equal("TestNG | Installation in Eclipse", installation_text.text,"Text not matches")
end
parent_window.use do 
    message_button = browser.button(:xpath => "//button[contains(text(),'Message')]")
    message_button.click
end
# Watir::Wait.until { browser.ready_state == 'complete' }
# sleep(2)
# target_window = nil
# window_index = 2
# browser.windows[window_index].use do
#     newmsg_text = browser.element(:xpath => "//body[contains(text(),'New')]")
#     assert_true(newmsg_text.visible?,"Not present")
# end
window_handles = browser.windows
puts "Total windows opened:#{window_handles.size}"