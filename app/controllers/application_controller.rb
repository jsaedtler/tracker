class ApplicationController < ActionController::Base
  protect_from_forgery
  def current_ability 
    @current_ability ||= Ability.new(current_user) 
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to :back, :alert => exception.message
  end
  
end
