class MainController < ApplicationController
  def index
  end

  def about
  end

  def products
  	@categories = Category.all
  end

  def articles
    @articles = Article.all.order(created_at: :desc)
  	@newarticle = Article.new
  end

end
