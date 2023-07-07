require 'watir'

browser = Watir::Browser.new:chrome
browser.goto("http://watir.com/examples/shadow_dom.html")
shadow_host = browser.element(:id => "shadow_host")
# shadow_root = browser.execute_script('return arguments[0].shadowRoot', shadow_host)
shadow_elements= browser.execute_script('return arguments[0].shadowRoot.querySelectorAll("shadow-element-selector")', shadow_host)
shadow_elements.each do |element|
    # Perform actions on each element
    puts element.text
  end