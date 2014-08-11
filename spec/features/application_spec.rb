require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"
    expect(page).to have_content "About"
    click_on "About"
    expect(page).to have_content "Not much to say here."
    visit '/'
    expect(page).to have_content "New gif"
    click_on "New gif"
    expect(page).to have_content "New GIF"
    fill_in "Url", with: "hello"
    fill_in "Title", with: "hello gifs"
    click_on "Create Gif"
    expect(page).to have_content "Welcome"
    expect(page).to have_content "gif created successfully"
  end
end
