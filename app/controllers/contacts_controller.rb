class ContactsController < ApplicationController
#  before_action :set_contact, only: [:show, :edit, :update, :destroy]
before_filter :login_required, :only => [:index, :edit, :update, :destroy]
  def index
    @contacts = Contact.paginate(:per_page => 5, :page => params[:page])
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to root_url}
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact}
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url }
    end
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:name, :email, :cellphone, :commentaries)
    end
end
