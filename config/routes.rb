Rails.application.routes.draw do
  get '/printers' => 'printer#index', as: :printer
  post 'printers'=> 'printer#update'
  get '' => 'printer#index'
  # get '/printers/new' => 'printer#new'
  # post 'printers/new' => 'printer#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
