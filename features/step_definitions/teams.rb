Given /^(?:|I) am on "([^"]*)" page$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I) click on "([^"]*)" within bar menu$/ do |option|
  click_on(option)
end
