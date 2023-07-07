require 'watir'

browser = Watir::Browser.new:chrome
browser.goto "https://www.google.com/"
links = browser.links.collect(&:text)
puts links