class ProductsController < ApplicationController
 # before_action :set_product, only: [:show, :edit, :update, :destroy]
 #skip_before_filter :login_required, :only => [:index, :show]
 before_filter :login_required, :only => [:new, :create, :edit, :update, :destroy]
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def filter_by
    @products = Product.where("category like ?", "%#{params[:category]}%" )    
  end


  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product}
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product}
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
    end
  end

  private
    
    def set_product
      @product = Product.find(params[:id])
    end

    
    def product_params
      params.require(:product).permit(:name, :description, :category, :photo)
    end
end
