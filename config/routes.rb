Serial::Application.routes.draw do

  get "playground/index"
  get "playground/test"
  resources :arduinos
  root :to => "playground#index"

  match "send_command" => "playground#send_command"
  match "redled" => "playground#redled"
  match "greenled" => "playground#greenled"
  match "redled2" => "playground#redled2"
  match "turn_off" => "playground#turn_off"
  match "turn_on" => "playground#turn_on"
  match "blink" => "playground#blink"

  match "pin" => "playground#pin"

end
