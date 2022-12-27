require 'rails_helper'

RSpec.feature 'User views homepage' do
  scenario "they see a new planet's link" do
    planet = create(:planet)
    # FactoryBot.create also works
    visit root_path
    expect(page).to(have_link(planet.name, href: planet_path(planet)))
  end
end
