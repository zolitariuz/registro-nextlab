class RegistroController < ApplicationController
  
  def index
  end

  def register
  	@user = RegisteredUser.new(user_params)
  	if @user.save
  		flash[:notice] = 'Usuario guardado'
  		redirect_to(:action => 'index')
  	else
  		flash[:notice] = 'No se pudo registrar el usuario'
  		redirect_to(:action => 'index')
  	end
  end

  private
  	def user_params
  	  params.require(:registered_user).permit(:name, :email)
  	end
end
