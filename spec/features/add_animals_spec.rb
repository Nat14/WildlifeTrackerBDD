require 'rails_helper'

RSpec.feature "AddAnimals", type: :feature do
  it "Story: As a ranger I can go to a home page." do
    visit '/'
    expect(page).to have_content("Welcome to the Animal Tracker App")
  end

  it "Story: As a ranger I can create an animal and save it in the database from the home page." do
    visit "/"
    
  end
end
