require 'watir'

browser = Watir::Browser.new:chrome
browser.goto "https://automationbookstore.dev/"
browser.window.maximize
books = browser.elements(:xpath => "//h2[starts-with(@id,'pid')]")
books.each do |book|
    puts book.text
end