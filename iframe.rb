require 'watir'

browser = Watir::Browser.new:chrome
browser.window.maximize
browser.goto("https://chercher.tech/practice/frames-example-selenium-webdriver")
# iframe_1 = browser.iframe(:xpath => "//iframe[@id='frame1']")
browser.driver.switch_to.frame("frame1")
input_path = browser.text_field(:xpath => "//input")
input_path.set("Hii")
browser.driver.switch_to.frame("frame3")
check_box = browser.checkbox(:css => "input[id=a]")
check_box.check
browser.driver.switch_to.default_content
browser.driver.switch_to.frame("frame2")
dropdown = browser.select_list(:xpath => "//select[@id='animals']")
dropdown.select("Big Baby Cat")
sleep(3)
