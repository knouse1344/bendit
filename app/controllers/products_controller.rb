class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  def index
    @products = Product.paginate(page: params[:page], :per_page => 20).order('category_id ASC')
  end

  # GET /products/1
  def show
  end

  def analytics
    @product = Product.find(params[:id])
    if @product.views == nil
      @product.views = 1
    else
      @product.views += 1
    end
    @product.save
    redirect_to @product.product_url
  end

  def resetcount
    @product = Product.find(params[:id])
    @product.views = 0
    @product.save
    redirect_to "/main/products"
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
    redirect_to products_url, notice: 'Product was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:title, :product_img_url, :product_url, :category_id)
    end
end
