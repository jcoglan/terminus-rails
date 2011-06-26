class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def index
    render :text => '<h1>Hello, World!</h1>'
  end
end
