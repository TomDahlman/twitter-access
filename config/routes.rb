Build1::Application.routes.draw do
  resources :streams

  match "/auth/twitter/callback" => "sessions#create"
  match "/signout" => "session#destroy", :as => :signout
  
end
