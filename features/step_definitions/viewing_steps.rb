Then /^I should see the home page$/ do
  page.should have_content "Your content here."
end

Then /^I should see the heading "([^"]*)"$/ do |heading|
  page.should have_css('h1', text: heading)
end
