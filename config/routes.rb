Build1::Application.routes.draw do
  resources :streams

  match "/auth/twitter/callback" => "sessions#create"
  
end
