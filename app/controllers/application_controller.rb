class ApplicationController < ActionController::Base

  def set_article
    @article = Article.find(params[:id])  
  end
end
