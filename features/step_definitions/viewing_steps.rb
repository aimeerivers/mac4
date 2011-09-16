Then /^I should see the home page$/ do
  page.should have_content "Your content here."
end

Then /^I should see the heading "([^"]*)"$/ do |heading|
  page.should have_css('h1', text: heading)
end

Then /^I should see the page title "([^"]*)"$/ do |title|
  page.should have_css('head title', text: title)
end

Then /^I should see a list of treatments$/ do
  page.should have_css('.treatments .treatment a.title')
end
