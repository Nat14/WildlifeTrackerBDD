require 'rails_helper'

RSpec.feature "AddAnimals", type: :feature do
  it "Story: As a ranger I can go to a home page." do
    visit '/'
    expect(page).to have_content("Welcome to the Animal Tracker App")
  end

  it "Story: As a ranger I can create an animal" do
    visit "/"
    expect(page).to have_field("Name")
  end

  it "Story: And it goes back the home page." do
    visit "/"
    fill_in("Name", with: "tiger")
    click_button "Add Animal"
    expect(page).to have_content("Welcome to the Animal Tracker App")
  end

  it "Story: As a ranger I can list all animals in a database." do
    visit "/"
    fill_in("Name", with: "tiger")
    click_button "Add Animal"
    click_button "Show List of Animal"
    expect(page).to have_content("tiger")
  end

  # it "Story: As a ranger I can update an animal in the database." do
  #   visit "/"
  #   fill_in("Name", with: "tiger")
  #   click_button "Add Animal"
  #   click_button "Update Animal"
  #   expect(page).to have_content("tiger")
  #   fill_in("Name", with: "big tiger")
  #   expect(page).to have_content("big tiger")
  # end

end
