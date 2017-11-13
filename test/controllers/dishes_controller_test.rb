require 'test_helper'

class DishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dish = dishes(:one)
  end

  test "should get index" do
    get dishes_url
    assert_response :success
  end

  test "should get new" do
    get new_dish_url
    assert_response :success
  end

  test "should create dish" do
    assert_difference('Dish.count') do
      post dishes_url, params: { dish: {dish_name: @dish.dish_name, maxOrder: @dish.maxOrder, price: @dish.price, time_of_last_order: @dish.time_of_last_order, user_id: @dish.user_id } }
    end

    assert_redirected_to dish_url(Dish.last)
  end

  test "should show dish" do
    get dish_url(@dish)
    assert_response :success
  end

  test "should get edit" do
    get edit_dish_url(@dish)
    assert_response :success
  end

  test "should update dish" do
    patch dish_url(@dish), params: { dish: {dish_name: @dish.dish_name, maxOrder: @dish.maxOrder, price: @dish.price, time_of_last_order: @dish.time_of_last_order, user_id: @dish.user_id } }
    assert_redirected_to dish_url(@dish)
  end

  test "should destroy dish" do
    assert_difference('Dish.count', -1) do
      delete dish_url(@dish)
    end

    assert_redirected_to dishes_url
  end
end
