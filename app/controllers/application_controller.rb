class ApplicationController < ActionController::Base
  before_action :login_required
  include SessionsHelper
  
  def login_required
    redirect_to new_session_path unless current_user
  end
end
