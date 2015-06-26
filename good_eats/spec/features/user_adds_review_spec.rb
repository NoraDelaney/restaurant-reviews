require 'rails_helper'

feature 'user adds a new review', %(
  As a user
  I want to add a review
  So that others will know what I think this restaurant.
) do


#Acceptance Criteria
# - I must be able to fill in the form to add a review.
# - I must see the review on the restaurant details page.
# - I must include a body with my review.

  scenario 'user adds a review' do

   visit '/restaurants/new'

    fill_in('Name', with: 'Panera')
    fill_in('Address', with: 'South Street')
    fill_in('City', with: 'Boston')
    fill_in('State', with: 'MA')
    fill_in('Zip code', with: '02111')
    click_on('Add a restaurant')
    click_on('Panera')
    click_on('Add a review')
    fill_in('Rating', with: '3')
    fill_in('Body', with: 'It is okay for soups, salads, and sandwiches.')
    click_on('Submit review')
    expect(page).to have_content('It is okay for soups, salads, and sandwiches.')

  end

  scenario 'user leaves out info' do

   visit '/restaurants/new'

    fill_in('Name', with: 'Chipotle')
    fill_in('Address', with: 'Washington Street Street')
    fill_in('City', with: 'Boston')
    fill_in('State', with: 'MA')
    fill_in('Zip code', with: '02111')
    click_on('Add a restaurant')
    click_on('Chipotle')
    click_on('Add a review')
    fill_in('Body', with: 'It is pretty tasty. I like their guacamole.')
    click_on('Submit review')
    expect(page).to have_content("Rating can't be blank")

  end



end
