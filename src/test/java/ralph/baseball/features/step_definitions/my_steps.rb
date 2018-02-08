require 'page-object'

include PageObject::PageFactory

Given(/^I visit the add player page$/) do
  visit_page AddPlayer
end
When(/^I submit the add player form$/) do

  on_page AddPlayer do |page|
    page.cover = 'George'
    page.name = 'George'
    page.number = '12'
    page.atBats = '16'
    page.hits = '4'
    page.add
  end
end


Then(/^I see the player I created has been added to database$/) do
  on_page Player do |page|
    expect(page.response).to include 'George'
  end
end

Given(/^I visit the player page$/) do
  visit_page Player
end

When(/^I click delete link on the player page$/) do
  on_page Player do |page|
  page.delete
    end
end

Then(/^I see the player has been deleted from database$/) do
  on_page Player do |page|
  expect(page.response).not_to include 'Ethan'
   end
end


Given(/^I visit the player schedule page$/) do
  visit_page Player
end

When(/^I click the tournament schedule link$/) do
  on_page Player do |page|
    page.schedule
  end
end

Then(/^I see the list of tournaments$/) do
  on_page Schedule do |page|
    expect(page.response).to include 'Schedule'
  end
end

Given(/^I visit the player stats page$/) do
  visit_page Player
end

When(/^I click the stats link$/) do
  on_page Player do |page|
    page.stats
  end
end

Then(/^I see the list of player stats$/) do
  on_page Stats do |page|
    expect(page.response).to include 'Player Stats'
  end
end

Given(/^I visit the player detail page$/) do
  visit_page Player
end

When(/^I click the detail link$/) do
  on_page Player do |page|
    page.detail
  end
end

Then(/^I see the list of player detail$/) do
  on_page PlayerDetail do |page|
  expect(page.response).to include 'Player Detail'
  end
end

Given(/^I visit the player edit page$/) do
  visit_page Player
end

When(/^I click the edit link$/) do
  on_page Player do |page|
    page.edit
  end
end

And(/^I enter player information$/) do
  on_page Edit do |page|
    page.cover = 'wwww'
    page.name = 'George Smith'
    page.number = '12'
    page.atBats = '16'
    page.hits = '4'
    page.update
  end
end

Then(/^I see the player information was updated$/) do
  on_page Player do |page|
    expect(page.response).to include 'George Smith'
  end
end