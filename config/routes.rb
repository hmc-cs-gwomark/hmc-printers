Rails.application.routes.draw do
  get 'statuses/index'
  get '/printers' => 'printer#index', as: :printer
  post 'printers'=> 'printer#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
