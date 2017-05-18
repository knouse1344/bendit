class HomepagesController < ApplicationController
  before_action :signed_in_user, only: [:edit, :new, :update, :destroy]
  
  def index
    @homepages = Homepage.all.order(created_at: :desc)
  end

  def show
    @homepage = Homepage.find(params[:id])
  end

  def new
    @homepage = Homepage.new
  end

  def edit
    @homepage = Homepage.find(params[:id])
  end

  def create
    @homepage = Homepage.new(homepage_params)

    respond_to do |format|
      if @homepage.save
        format.html { redirect_to '/', notice: 'Home page created.' }
        format.json { render action: 'show', status: :created, location: @homepage }
      else
        format.html { render action: 'new' }
        format.json { render json: @homepage.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @homepage = Homepage.find(params[:id])
    
    respond_to do |format|
      if @homepage.update(homepage_params)
        format.html { redirect_to '/', notice: 'Home page updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @homepage.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @homepage = Homepage.find(params[:id])
    @homepage.destroy
    respond_to do |format|
      format.html { redirect_to "/", notice: 'Home page destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def homepage_params
      params.require(:homepage).permit(:content, :imageone, :imagetwo, :imagethree)
    end
end

