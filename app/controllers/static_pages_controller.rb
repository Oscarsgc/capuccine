class StaticPagesController < ApplicationController
  def home
    @products = Product.paginate(:per_page => 6, :page => params[:page])
  end

  def help
  end

  def about
  	
  end

  def gdc_bolivia  	
  end

  def idi
  end

  def compromiso  	
  end

end
