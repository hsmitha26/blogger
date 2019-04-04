require 'rails_helper'

RSpec.describe "When a user clicks on delete article from the article show page", type: :feature do
  it "allows user to delete selected article" do
    article_1 = Article.create!(title: "Title 1", body: "Body 1")
    article_2 = Article.create!(title: "Title 2", body: "Body 2")

    visit article_path(article_1)
    click_on "Delete Article"

    expect(current_path).to eq(articles_path)
    expect(page).to_not have_content(article_1.title)
    expect(page).to have_content(article_2.title)
  end

end
