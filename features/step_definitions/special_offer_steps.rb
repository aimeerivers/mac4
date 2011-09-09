Given /^the current special offer is "([^"]*)"$/ do |offer_key|
  #SpecialOffer.stub(current: SpecialOffer.by_key(offer_key))
  # TODO: find out why i can't stub this
end

Then /^I should not see a special offer box$/ do
  page.should have_no_css('#secondary .box.special-offer')
end
