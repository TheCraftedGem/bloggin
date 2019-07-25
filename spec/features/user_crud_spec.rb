require "rails_helper"

RSpec.describe "User crud for articles" do

  describe 'visits /articles' do
    it "displays all articles" do 
      article_1 = Article.create!(title: "New Title", body: "New Body")
      article_2 = Article.create!(title: "Second Title", body: "Second Body")


      visit '/articles'

      expect(page).to have_link(article_1.title)
      expect(page).to have_link(article_2.title)
    end
  end

  describe "user sees one article" do
    describe "they link from the article index" do
      it "displays information for one article" do
        article = Article.create!(title: "New Title", body: "New Body")
        
        visit articles_path

        click_link article.title

        expect(page).to have_content(article.title)
        expect(page).to have_content(article.body)
      end
    end
  end
end 