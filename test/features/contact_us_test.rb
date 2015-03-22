require "test_helper"

feature "Contact Us" do
  scenario "visit contact page" do
    visit contact_path
    page.must_have_content "Contact Us"
    # fill_in :name, with: "Barney Ruble"
    # fill_in :email, with: "brubble@example.com"
    # fill_in :message, with: "I want to learn more about your services."
    # click_button "Send message"
    # page.must_have_content "Thank you"
  end
end
