class AdminController < ApplicationController
  def index
    @total_orders = Order.count
  end
  def destroy
    session[:user_id] = nil
    redirect_to login_url, :notice => "Logged out"
  end
end
