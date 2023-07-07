require 'watir'

browser = Watir::Browser.new:chrome
browser.goto("https://demo.guru99.com/test/social-icon.html")
browser.window.maximize
social_icons = browser.elements(:css => "div.socialbtns a")
icon_names = browser.elements(:css => "div.socialbtns span.assistive-text")
social_icons.each do |icon|
    icon.hover
    icon_names.each do |icon_name|
        puts icon_name.text
    end
end
# social_icon = browser.element(:xpath => "(//a[@title='Mail'])[2]")
# social_icon.hover
# tool_tip = browser.element(:xpath => "(//span[text()='Mail'])[2]")
# puts tool_tip.text