class AboutpagesController < ApplicationController
  before_action :signed_in_user, only: [:edit, :new, :update, :destroy]
  
  def index
    @aboutpages = Aboutpage.all.order(created_at: :desc)
  end

  def show
    @aboutpage = Aboutpage.find(params[:id])
  end

  def new
    @aboutpage = Aboutpage.new
  end

  def edit
    @aboutpage = Aboutpage.find(params[:id])
  end

  def create
    @aboutpage = Aboutpage.new(aboutpage_params)

    respond_to do |format|
      if @aboutpage.save
        format.html { redirect_to '/main/about', notice: 'About page created.' }
        format.json { render action: 'show', status: :created, location: @aboutpage }
      else
        format.html { render action: 'new' }
        format.json { render json: @aboutpage.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @aboutpage = Aboutpage.find(params[:id])
    
    respond_to do |format|
      if @aboutpage.update(aboutpage_params)
        format.html { redirect_to '/main/about', notice: 'About page updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @aboutpage.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @aboutpage = Aboutpage.find(params[:id])
    @aboutpage.destroy
    respond_to do |format|
      format.html { redirect_to "/", notice: 'About page destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def aboutpage_params
      params.require(:aboutpage).permit(:content, :image)
    end
end

