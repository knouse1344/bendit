class MainController < ApplicationController
  def index
  end

  def about
  end

  def products
  	@categories = Category.all
  end

  def articles
  end

end
