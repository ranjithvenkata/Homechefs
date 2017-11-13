Given(/^I am a chef$/) do
  @role = FactoryGirl.create :chefrole
  @chef = FactoryGirl.create :chef
end

Given(/^there is a dish$/) do
  @dishes = FactoryGirl.create :dish
end


Given(/^Iam logged in$/) do
  visit '/'
  click_link 'Project'
  click_link 'Sign in'
  fill_in 'Email', with: @chef.email
  fill_in 'Password', with: @chef.password
  click_button 'Log in'
end

Then(/^I click on my menu$/) do
  click_link 'Project'
  click_link 'My Menu'
end

Then(/^I click on new dish$/) do
  click_link 'New Dish'
end

Then(/^I create dish$/) do
  fill_in 'Dish name', with: @dishes.dish_name
  fill_in 'Maxorder', with: @dishes.maxOrder
  fill_in 'Price', with: @dishes.price
  click_button 'Create Dish'

end


Then(/^I should see comment$/) do
  save_and_open_page
  expect(page).to have_content "Dish was successfully created"
end