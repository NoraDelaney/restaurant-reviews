require 'rails_helper'

feature 'user visits details page and sees details about restaurant', %(
  As a user
  I want to view a restaurant's details
  So that I can decide if I want to eat there.
  ) do

  #Acceptance Criteria
  # - I must be able to get to this page from the restaurnt index page.
  # - I must see the restaurants's name
  # - I must see the question's address, city, state, and zip code.

  scenario 'user goes from restaurant page to details page and sees details' do
    restaurant = Restaurant.create(name: "Chicken and Rice Guys", address: "44 Something Street", city: "Boston", state: "MA", zip_code:"02430")

    visit '/restaurants'

    click_link("Chicken and Rice Guys")
    expect(page).to have_content(restaurant.name)
    expect(page).to have_content(restaurant.address)
    expect(page).to have_content(restaurant.city)
    expect(page).to have_content(restaurant.state)
    expect(page).to have_content(restaurant.zip_code)

  end
end
