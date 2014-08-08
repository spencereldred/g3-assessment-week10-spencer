require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"
    expect(page).to have_content "About"
    expect(page).to have_content "New gif"
    click_on "About"
    expect(page).to have_content "Not much to say here."
    visit '/'
    expect(page).to have_content "New gif"
    click_on "New gif"
    expect(page).to have_content "New GIF"
    expect(page).to have_content "Create gif"
    fill_in "URL", with: "hello"
    fill_in "Title", with: "hello gif"
    click_on "Create gif"
    expect(page).to have_content "Welcome"
    expect(page).to have_content "Gif created successfully"
  end
end
