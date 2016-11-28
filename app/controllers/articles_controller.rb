class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to "/main/articles", notice: 'Article successfully added.' }
        format.json { render action: 'show', status: :created, location: @article }
      else
        format.html { render action: 'new' }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to "/main/articles", notice: 'Article successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article = Article.find(params[:id])
    
    @article.destroy
    respond_to do |format|
      format.html { redirect_to "/main/articles", notice: 'Article was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

    def article_params
      params.require(:article).permit(:image, :link, :title)
    end
end

