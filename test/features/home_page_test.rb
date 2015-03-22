require "test_helper"

feature "Home Page" do
  scenario "Visit the home page" do
    visit root_path
    page.must_have_content "Rapid Turtle"
  end
end
