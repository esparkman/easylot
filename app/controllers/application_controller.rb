class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # layout :set_layout

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  private

  def set_layout
    devise_controller? ? 'dashboard' : false
  end
end
