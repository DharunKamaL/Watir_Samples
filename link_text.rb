require 'watir'

browser = Watir::Browser.new:chrome
browser.goto "https://www.wikipedia.org/"
browser.window.maximize
text = browser.link(:xpath => "//a[@title='English — Wikipedia — The Free Encyclopedia']")
is_link_present = text.exist?
if is_link_present
    text.click
    puts "Link is present"
else
    puts "Link is not present"
end
sleep(2)