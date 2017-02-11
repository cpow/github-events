require 'rails_helper'

feature 'Guest visits homepage' do
  scenario 'and sees the events new page immediately' do
    visit root_path
    expect(page).to have_css 'h1', text: 'Welcome to Github Events!'
    expect(page).to have_css '.jumbotron'
  end
end
