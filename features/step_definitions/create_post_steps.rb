Given /^I am a blogger$/ do
  current_user
end

Given /^am logged in$/ do
  visit '/login'
  fill_in 'username', :with => current_user.username
  fill_in 'password', :with => 'password'
end

When /^I create a post$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the post should be on the front page$/ do
  pending # express the regexp above with the code you wish you had
end

def current_user
  @current_user ||= FactoryGirl.create :user
end