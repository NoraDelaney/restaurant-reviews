require 'rails_helper'

feature 'user views full list of restaurants', %(
  As a user
  I want to browse all the restaurants
  So that I can see my food options.
) do



#Acceptance Criteria
# - I must see the name of each restaurant on '/restaurants' page.
# - I must see the name of each restaurants on the root page ('/')
# - I must be able to click on a restaurant to get to its details page.

  scenario 'restaurant has a name' do
   restaurant = Restaurant.create(name: "Chicken and Rice Guys", address: "44 Something Street", city: "Boston", state: "MA", zip_code:"02430")

    visit '/restaurants'
    expect(page).to have_content(restaurant.name)
  end

  scenario 'restaurants are on root page' do
   restaurant = Restaurant.create(name: "Chicken and Rice Guys", address: "44 Something Street", city: "Boston", state: "MA", zip_code:"02430")

    visit '/'
    expect(page).to have_content(restaurant.name)
  end

  scenario 'user goes from restaurant page to details page' do
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
