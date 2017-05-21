class MainController < ApplicationController
  def index
    @homepage = Homepage.first
  end

  def about
    @aboutpage = Aboutpage.first
  end

  def products
  	@categories = Category.all
  end

  def brochures
    @brochures = Brochure.all
  end

  def handout
    @handouts = Handout.all
  end

  def articles
    @articles = Article.all.order(created_at: :desc)
  	@newarticle = Article.new
  end

  def course_offerings
    @offerings = Offering.all
  end

end
