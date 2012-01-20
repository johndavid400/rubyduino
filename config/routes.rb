Serial::Application.routes.draw do

  get "playground/index"
  resources :arduinos
  root :to => "playground#index"

  match "select_arduino" => "playground#select_arduino"

end
