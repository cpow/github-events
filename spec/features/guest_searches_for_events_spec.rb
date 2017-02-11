require 'rails_helper'

feature 'Guest searches for events' do
  scenario 'and sees the form for searching' do
    visit root_path
    expect(page).to have_css 'form'
    expect(page).to have_css '.jumbotron'
  end

  scenario 'and sees results after inputting search terms' do
    event_type = "PushEvent"
    repo_name = "browntree_labs"
    user_name = "cpow"

    # Don't call github's actual API in tests
    EventSearch.backend = FakeGithub

    visit root_path
    select event_type, from: "Event type"
    fill_in "User name", with: user_name
    fill_in "Repo name", with: repo_name
    click_on "Find Events"

    expect(page).to have_content "searching for #{user_name}"
    expect(page).to have_content event_type
    expect(page).to have_css 'table'
  end

  scenario 'and will protect against bad searches' do
    visit root_path
    fill_in "User name", with: "cpow"
    click_on "Find Events"

    expect(page).to_not have_content "searching for cpow"
  end
end
