require 'watir'
require "test/unit/assertions"
include Test::Unit::Assertions

browser = Watir::Browser.new:chrome
browser.goto("https://www.demoblaze.com/")
browser.window.maximize
assert(browser.title=="STORE","Not expected title")
log_in = browser.link(:xpath => "//a[text()='Log in']")
log_in.click
user_name = browser.text_field(:xpath => "//input[@id='loginusername']")
user_name.set("Dharun_K")
password = browser.text_field(:xpath => "//input[@id='loginpassword']")
password.set("dkvk2315")
log_in_btn = browser.button(:xpath => "//button[text()='Log in']")
log_in_btn.click
log_in_text = browser.element(:xpath => "//a[@id='nameofuser']")
browser.wait_until(timeout:5) do
    log_in_text.present?
end
assert_equal("Welcome Dharun_K",log_in_text.text,"Not expected username")
browser.close