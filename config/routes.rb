Rails.application.routes.draw do
  get 'main/first'
  mount Commontator::Engine => '/commontator'
  get 'page/personal'
  get 'page/placeorder'
  get 'page/myorders'
  resources :dishes
  devise_for :users
  get 'home/index'
  get '/page/order'
  post '/page/order'
  get '/page/confirmation'
  post '/page/confirmation'
  get 'home/statuses'
  post 'home/statuses'
  get 'home/change'
  post 'home/change'



  root "home#index"

end
