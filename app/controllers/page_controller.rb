class PageController < ApplicationController


  def personal

      @dishes=Dish.where('user_id = ?',current_user)


  end

  def placeorder
    @dishes=Dish.where('(time_of_last_order >= ?) AND ("maxOrder" > ?) AND user_id != ?',  Time.zone.now(), 0,current_user)
  end
  def order

    puts params[:order].inspect
    @found = params['order'].map(&:to_i)
    session[:dishes_wanted] = @found
    @dishes=Dish.where("id IN (?)",@found)

  end
  def confirmation
    #puts params[:dish].inspect
    @quantity=params[:quantity].map(&:to_i)
    @list=0
    #puts @quantity

    for k in session[:dishes_wanted]
      @dishid=Dish.find(k)
      order=Order.new

      order.dish= @dishid

      order.quantity=@quantity[@list]
      @list=@list+1

      order.user=current_user

      order.save

      @newdish=Dish.find(@dishid)

      @newdish.maxOrder=@newdish.maxOrder-order.quantity
      @newdish.save
    end
  end
  def myorders

    #@dishes=Dish.where(id: Order.where("user_id = ?",current_user).select(:dish_id) )
    #@chef=User.where(id: Order.where("user_id = ?",current_user).select(:user_id) )
    @orders=Order.where("user_id = ?",current_user)


  end
end
