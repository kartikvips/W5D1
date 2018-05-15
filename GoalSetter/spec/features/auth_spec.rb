require 'rails_helper'
require 'spec_helper'

feature 'the sign up process' do

  background :each do
    visit new_user_path
  end

  scenario 'it should take you to the signnnnuuupppp paaaageeeeeeeeee' do
    expect(page).to have_content "New User"
  end

  scenario "signing up" do
    fill_in 'Username', with: "poop"
    fill_in "Password", with: "pooopooo"
    click_on "pooopooo"
    expect(page).to have_content("New User")
  end







end
