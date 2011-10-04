Given /^I am not logged in$/ do
end

When /^I try to access a secure resource$/ do
  visit '/admin'
end

Then /^I should be redirected to the login$/ do
  page.current_path.should == '/login'
end