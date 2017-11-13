FactoryGirl.define do
  factory :chef, class: User do
    email "ranjan@ait.asia"
    password "123456"
    role_id "1"
  end

  factory :chefrole, class: Role do
    id  "1"
    name "Chef"
  end

  factory :dish do
    dish_name "Pasta"
    timeOfLastOrder ""
    maxOrder "2"
    ready_by ""
    price "50.0"
  end


end