class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:login], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to_target_or_default root_url, :notice => "Acaba de iniciar sesion."
    else
      flash.now[:alert] = "Nombre de usuario o contraseña incorrectos."
      render :action => 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Acaba de cerrar sesion."
  end
end
