class HomeController < ApplicationController

  def index
    if user_signed_in?
    @chef = User.find_by_email(current_user.email)
    @orders=Order.where(dish_id: Dish.where("user_id = ?",current_user).select(:id) )

    end

  end

  def change
    user = User.find(current_user.id)
    puts params[:role]
    puts user.name
    user.update_attribute :role_id, params[:role]
    puts user.errors.details
    redirect_to home_index_path


  end



  def statuses

    user = User.find(current_user.id)
    puts params[:status]
    puts user.name
    user.update_attribute :status_id, params[:status]
    puts user.errors.details
    redirect_to home_index_path

  end

  end
