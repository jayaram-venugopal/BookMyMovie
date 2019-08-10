class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def method_name
    
  end
  
end
