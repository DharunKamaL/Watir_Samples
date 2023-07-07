require 'watir'
require "test/unit/assertions"
include Test::Unit::Assertions

browser = Watir::Browser.new:chrome
browser.goto("https://demo.seleniumeasy.com/basic-checkbox-demo.html")
browser.window.maximize
check_box = browser.checkbox(:xpath => "//input[@id='isAgeSelected']")
is_success_visible = browser.element(:xpath => "//div[text()='Success - Check box is checked']")
if !check_box.checked?
    check_box.check
    # check_box.uncheck {for unchecking}
else
    puts "check box is already checked"
end
browser.wait_until(timeout:5) do
    is_success_visible.present?
end
assert_true(is_success_visible.visible?,"Success message not visible")
browser.checkbox(:xpath => "(//input[@type='checkbox'])[4]").check
browser.checkbox(:xpath => "(//input[@type='checkbox'])[5]").check
browser.checkbox(:xpath => "(//input[@type='checkbox'])[6]").check
browser.checkbox(:xpath => "(//input[@type='checkbox'])[7]").check
sleep(5)