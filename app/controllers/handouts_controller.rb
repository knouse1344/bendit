class HandoutsController < ApplicationController
  before_action :signed_in_user, only: [:edit, :new, :update, :destroy]
  
  def index
    @handouts = Handout.all.order(created_at: :desc)
  end

  def show
    @handout = Handout.find(params[:id])
  end

  def new
    @handout = Handout.new
  end

  def edit
    @handout = Handout.find(params[:id])
  end

  def create
    @handout = Handout.new(handout_params)

    respond_to do |format|
      if @handout.save
        format.html { redirect_to '/main/handout', notice: 'Home page created.' }
        format.json { render action: 'show', status: :created, location: @handout }
      else
        format.html { render action: 'new' }
        format.json { render json: @handout.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @handout = Handout.find(params[:id])
    
    respond_to do |format|
      if @handout.update(handout_params)
        format.html { redirect_to '/main/handout', notice: 'Home page updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @handout.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @handout = Handout.find(params[:id])
    @handout.destroy
    respond_to do |format|
      format.html { redirect_to "/main/handout", notice: 'Home page destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def handout_params
      params.require(:handout).permit(:title, :file, :image)
    end
end

