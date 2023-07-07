require 'watir'

# browser.driver.manage.timeouts.implicit_wait = 10
Watir.default_timeout = 10
browser = Watir::Browser.new:chrome
browser.goto "https://www.wikipedia.org/"
browser.close