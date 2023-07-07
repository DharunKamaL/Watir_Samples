require 'watir'

browser = Watir::Browser.new:chrome
browser.goto 'https://www.saucedemo.com/'
puts ("The current url is:"+browser.url.to_s)
browser.window.maximize
# browser.send_keys [:control,:subtract]*10
sleep(5)
