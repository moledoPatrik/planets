require 'rails_helper'

RSpec.feature "User adds a planet" do
  scenario "they see the new planet page" do
    planet_name = 'Earth'
    planet_description = 'Cool planet, but humans are destroying it'

    visit root_path
    click_on "Add planet"
    fill_in 'planet_name', with: planet_name
    fill_in 'planet_description', with: planet_description
    click_on 'Create Planet'

    expect(page).to(have_content(planet_name))
  end

  context 'the form is invalid' do
    scenario 'they see a useful error message' do
      planet_description = 'Cool planet, but humans are destroying it'

      visit root_path
      click_on 'Add planet'
      fill_in 'planet_description', with: planet_description
      click_on 'Create Planet'

      expect(page).to(have_content("Name can't be blank"))
    end
  end
end
