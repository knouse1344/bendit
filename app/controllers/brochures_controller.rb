class BrochuresController < ApplicationController
  before_action :signed_in_user, only: [:edit, :new, :update, :destroy]
  
  def index
    @brochures = Brochure.all.order(created_at: :desc)
  end

  def show
    @brochure = Brochure.find(params[:id])
  end

  def new
    @brochure = Brochure.new
  end

  def edit
    @brochure = Brochure.find(params[:id])
  end

  def create
    @brochure = Brochure.new(brochure_params)

    respond_to do |format|
      if @brochure.save
        format.html { redirect_to '/main/brochures', notice: 'Home page created.' }
        format.json { render action: 'show', status: :created, location: @brochure }
      else
        format.html { render action: 'new' }
        format.json { render json: @brochure.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @brochure = Brochure.find(params[:id])
    
    respond_to do |format|
      if @brochure.update(brochure_params)
        format.html { redirect_to '/main/brochures', notice: 'Home page updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @brochure.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @brochure = Brochure.find(params[:id])
    @brochure.destroy
    respond_to do |format|
      format.html { redirect_to "/main/brochures", notice: 'Home page destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def brochure_params
      params.require(:brochure).permit(:title, :file, :image)
    end
end

