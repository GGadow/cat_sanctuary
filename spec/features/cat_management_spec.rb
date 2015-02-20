require "rails_helper"

RSpec.feature "Add a new cat", :type => :feature do

  scenario "User adds a new cat" do
    visit "/cats/new"

    fill_in "Name", :with => "Bunny"
    fill_in "Age", :with => 2
    click_button "Complete admission"

    expect(page).to have_text "Bunny"
    expect(page).to have_text "2 years old"
  end

end
