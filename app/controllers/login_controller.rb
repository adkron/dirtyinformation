class LoginController < ApplicationController
  expose :user
  
  def new
    render nothing: true
  end
end