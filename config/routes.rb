Serial::Application.routes.draw do

  get "playground/index"
  resources :arduinos
  root :to => "playground#index"
  match "send_command" => "playground#send_command"

end
