require 'watir'

browser = Watir::Browser.new(:chrome,headless: true)
browser.goto "https://the-internet.herokuapp.com/login"
puts browser.title
puts browser.url