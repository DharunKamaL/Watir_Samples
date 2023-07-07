require 'watir'

browser = Watir::Browser.new(:chrome)
browser.goto "https://trytestingthis.netlify.app/"
browser.window.maximize
# browser.execute_script("window.scrollBy(0,1600);")
sleep(5)
# table = browser.table(:xpath => "//table")
# cell_value = table[1][0].text
# puts cell_value
# count = 0
# table.rows.each do |row|
#     row.cells.each do |cell|
#         print (cell.text+" ")
#     end
#     puts ("\n")
# end
# puts count
table = browser.table(:xpath => "//table")
sibling_elements = table.siblings
sibling_elements.each do |sibling|
    puts sibling.text
end
puts "----"
females = browser.elements(:xpath => "//td[text()='F']//preceding-sibling::td[2]")
females.each do |female|
    puts female.text
end