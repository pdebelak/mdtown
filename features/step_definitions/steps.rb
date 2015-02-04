Given(/^I do have a web application$/) do
end

When(/^I (visit|am on) the home page$/) do |a|
  visit root_path
end

Then(/^I should see the home page$/) do
  expect(page).to have_content 'MDTown'
end

When(/^I type markdown in the text editor$/) do
  expect{ find('#output p') }.to raise_error # proves this was added here
  element = page.find '.ace_text-input', visible: false
  element.set 'My Title'
end

Then(/^I should see the markdown rendered as html$/) do
  expect(find('#output p')).to have_content('My Title')
end

Given(/^I do not have an account$/) do
  expect(User.find_by_email('user@example.com')).to be_nil
end

When(/^I click 'Sign Up'$/) do
  visit root_path
  within '.nav' do
    click_link 'Sign Up'
  end
  expect(current_path).to eq(new_user_registration_path)
end

Then(/^I should be able to create my account$/) do
  within 'form' do
    fill_in 'user[email]', with: 'user@example.com'
    fill_in 'user[password]', with: 'password'
    fill_in 'user[password_confirmation]', with: 'password'
  end
  click_button 'Sign up'
  expect(User.find_by_email('user@example.com')).to be_truthy
end

Given(/^I have an account$/) do
  user = User.create(email: 'user@example.com', password: 'password')
end

When(/^I click 'Sign In'$/) do
  visit root_path
  within '.nav' do
    click_link 'Sign In'
  end
  expect(current_path).to eq(new_user_session_path)
end

Then(/^I should be able to log in$/) do
  within 'form' do
    fill_in 'user[email]', with: 'user@example.com'
    fill_in 'user[password]', with: 'password'
  end
  click_button 'Log in'
  expect(page).not_to have_link('Sign In')
  expect(page).to have_link('Log Out')
end
