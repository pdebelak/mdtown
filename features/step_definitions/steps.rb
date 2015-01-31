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
