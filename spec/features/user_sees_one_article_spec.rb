require 'rails_helper'

RSpec.describe 'When a user clicks on an article link', type: :feature do
  it "shows them the selected article" do
    article_1 = Article.create!(title: "Title 1", body: "Body 1")

    visit '/articles'

    click_on article_1.title

    expect(current_path).to eq(article_path(article_1))

    expect(page).to have_content(article_1.body)
  end

end
