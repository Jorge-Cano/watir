require 'watir'

browser = Watir::Browser.new:chrome

browser.goto 'google.com'
browser.text_field(title: 'Search').set 'Automation'
# By default Watir is set to Mozilla so this line works for that but not Chrome
# browser.button(type: 'submit').click
# Therefore you must inspect and run this code for Chromedriver
browser.button(name: 'btnK').click


puts browser.title


links = browser.h3s(class: 'r').map(&:link)
hrefs = links.map(&:href)
# hrefs.each { |href| puts href }

links.each { |link| puts "#{link.data_href || link.href}" }

# => 'Hello World! - Google Search'
# browser.quit
sleep(9000)
