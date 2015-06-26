require 'rails_helper'

feature 'user adds a new restaurant', %(
  As a user
  I want to add a restaurant
  So that others will know about this restaurant.
) do


#Acceptance Criteria
# - I must be able to fill in the form to add a restaurant.
# - I must see the name of each the new restaurant I added
# - I must add name, address, city, state, and zip code.

  scenario 'user adds a restaurant' do

   visit '/restaurants/new'

    fill_in('Name', with: 'Avana Sushi')
    fill_in('Address', with: 'Harrison Street')
    fill_in('City', with: 'Boston')
    fill_in('State', with: 'MA')
    fill_in('Zip code', with: '03414')
    click_on('Add a restaurant')
    expect(page).to have_content('Avana Sushi')
  end

  scenario 'user leaves out required information (City)' do

  visit '/restaurants/new'

   fill_in('Name', with: 'Avana Sushi')
   fill_in('Address', with: 'Harrison Street')
   fill_in('State', with: 'MA')
   fill_in('Zip code', with: '03414')
   click_on('Add a restaurant')
   expect(page).to have_content("City can't be blank")
 end

end
