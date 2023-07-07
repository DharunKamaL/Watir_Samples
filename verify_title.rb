require 'watir'

browser = Watir::Browser.new:chrome
browser.goto "https://www.google.com/"
page_title = browser.title
is_true = page_title.include?("Google")
if is_true
    puts "Pass"
else
    puts "Fail"
end