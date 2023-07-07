require 'watir'

browser = Watir::Browser.new:chrome
browser.goto "https://www.guru99.com/"
sleep(2)
browser.back
sleep(2)
browser.forward
sleep(2)