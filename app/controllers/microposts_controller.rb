class MicropostsController < ApplicationController
#  before_action :set_micropost, only: [:show, :edit, :update, :destroy]
before_filter :login_required, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @microposts = Micropost.all
  end

  def show
    @micropost = Micropost.find(params[:id])
  end

  def new
    @micropost = Micropost.new
  end

  def edit
    @micropost = Micropost.find(params[:id])
  end

  #def create
   # @micropost = Micropost.new(micropost_params)
    #@micropost = current_user.microposts.build(micropost_params)
#    respond_to do |format|
 #     if @micropost.save
  #      format.html { redirect_to @micropost}
   #   else
    #    format.html { render action: 'new' }
#      end
 #   end
#  end

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      redirect_to @micropost
    else
      render 'static_pages/home'
    end
  end



  def update
    respond_to do |format|
      if @micropost.update(micropost_params)
        format.html { redirect_to @micropost}
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @micropost.destroy
    respond_to do |format|
      format.html { redirect_to microposts_url }
    end
  end

  private
    
    def set_micropost
      @micropost = Micropost.find(params[:id])
    end

    
    def micropost_params
      params.require(:micropost).permit(:content, :user_id, :title, :photo)
    end
end
