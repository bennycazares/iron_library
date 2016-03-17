require "test_helper"

class CanSignInTest < Capybara::Rails::TestCase
  setup do
      User.create! name: "Bob", email: "bob@example.com", password: "12345678"
      Book.create! title: "Olympic Weightlifting: A Complete Guide for Athletes & Coaches", photo_url:"http://t0.gstatic.com/images?q=tbn:ANd9GcSJC7FDq-z6NlSNw-45Ra_v3wDYqU3BPHdxEQyTVPzC99vj9D6R", price:"5.00", author_id: 1
      Author.create! first_name: "Greg", last_name: "Everett", bio: "Olympic Weightlifting: A Complete Guide for Athletes & Coaches", id: 1
    end
  test "Can sign in" do
    visit root_path
    click_link "Olympic Weightlifting: A Complete Guide for Athletes & Coaches"
    fill_in "Email", with: "bob@example.com"
    fill_in "Password", with: "12345678"
    click_button "Sign In"

    assert_content page, "Olympic Weightlifting: A Complete Guide for Athletes & Coaches"
  end
end
