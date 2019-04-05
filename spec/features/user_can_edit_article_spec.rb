require 'rails_helper'

RSpec.describe "When a visitor clicks on edit article", type: :feature do
  it "allows them to edit and save article information" do
    article_1 = Article.create!(title: "Title 1", body: "Body 1")

    visit article_path(article_1)
    expect(current_path).to eq(article_path(article_1))

    click_on "Edit Article"
    expect(current_path).to eq(edit_article_path(article_1))

    expect(page).to have_content(article_1.title)
    click_on "Update Article"
  end
end
