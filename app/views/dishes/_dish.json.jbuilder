json.extract! dish, :id, :user_id, :dish_name, :time_of_last_order, :maxOrder, :price, :created_at, :updated_at
json.url dish_url(dish, format: :json)