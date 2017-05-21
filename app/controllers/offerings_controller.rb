class OfferingsController < ApplicationController
  before_action :signed_in_user, only: [:edit, :new, :update, :destroy]
  
  def index
    @offerings = Offering.all.order(created_at: :desc)
  end

  def show
    @offering = Offering.find(params[:id])
  end

  def new
    @offering = Offering.new
  end

  def edit
    @offering = Offering.find(params[:id])
  end

  def create
    @offering = Offering.new(offering_params)

    respond_to do |format|
      if @offering.save
        format.html { redirect_to '/main/course_offerings', notice: 'Home page created.' }
        format.json { render action: 'show', status: :created, location: @offering }
      else
        format.html { render action: 'new' }
        format.json { render json: @offering.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @offering = Offering.find(params[:id])
    
    respond_to do |format|
      if @offering.update(offering_params)
        format.html { redirect_to '/main/course_offerings', notice: 'Home page updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @offering.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @offering = Offering.find(params[:id])
    @offering.destroy
    respond_to do |format|
      format.html { redirect_to "/main/course_offerings", notice: 'Home page destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def offering_params
      params.require(:offering).permit(:title, :content)
    end
end

