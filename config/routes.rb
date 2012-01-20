Serial::Application.routes.draw do

  get "playground/index"
  get "playground/test"
  resources :arduinos
  root :to => "playground#index"

  match "select_arduino" => "playground#select_arduino"

end
