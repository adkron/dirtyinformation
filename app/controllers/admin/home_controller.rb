class Admin::HomeController < ApplicationController
  before_filter :authenticated?
  
  def show
    render nothing: true
  end
end