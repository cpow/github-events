require 'rails_helper'

feature 'Guest searches for events' do
  scenario 'and sees the form for searching' do
    visit root_path
    expect(page).to have_css 'form'
    expect(page).to have_css '.jumbotron'
  end

  scenario 'and inputs some search terms' do
    visit root_path
    fill_in "Event type", with: "something"
    fill_in "User name", with: "cpow"
    click_on "Find Events"
  end
end
