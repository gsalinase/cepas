class ApplicationController < ActionController::Base
  def authorize_admin!
    unless current_user.admin?
      flash[:error] = "Debes ser administrador para entrar a esta sección."
      redirect_to new_user_session_url
    end
  end
end
