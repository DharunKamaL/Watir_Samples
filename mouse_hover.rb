require 'watir'

browser = Watir::Browser.new:chrome
browser.window.maximize
browser.goto("http://the-internet.herokuapp.com/jqueryui/menu#")
enabled_btn = browser.link(:css => "a[id=ui-id-2]")
enabled_btn.hover
downloads_btn = browser.link(:css => "a[id=ui-id-4]")
downloads_btn.hover
pdf_btn = browser.link(:xpath => "//a[text()='PDF']")
pdf_btn.click