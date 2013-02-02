When /^I visit the (?:root|home) page$/ do
  visit('/')
end

When /^I visit ['"](.*)['"]$/ do |page|
  visit page
end

When /^I fill in ['"](.*)['"] with ['"](.*)['"]$/ do |field, value|
  fill_in field, with: value
end

When /^I click ['"](.*)['"]$/ do |link|
  click_link link
end

When /^I click button ['"](.*)['"]$/ do |button|
  click_button button
end

Then /^I should see ['"]([^"]*)['"]$/ do |text|
  page.should have_content(text)
end

Then /^Capybara should use the "([^"]*)" driver$/ do |driver|
  Capybara.current_driver.should == driver.to_sym
end

Then /^I will see ['"](.*)['"]$/ do |value|
  page.should have_content(value)
end

When /^I use a matcher that fails$/ do
  begin
    page.should have_css('h1#doesnotexist')
  rescue StandardError => e
    @error_message = e.message
  end
end

Then /^the failing exception should be nice$/ do
  @error_message.should =~ %r(expected to find css \"h1#doesnotexist\")
end
