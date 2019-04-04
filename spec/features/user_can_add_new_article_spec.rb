require 'rails_helper'

RSpec.describe "When a visitor clicks on add new article", type: :feature do
  it "allows them to add a new article" do
    visit articles_path

    click_on "Create A New Article"

    expect(current_path).to eq(new_article_path)

    fill_in "article[title]", with: "New Title!"
    fill_in "article[body]", with: "New Body!"
    click_on "Create Article"
    # save_and_open_page

    expect(page).to have_content("New Title!")
    expect(page).to have_content("New Body!")
  end

end
