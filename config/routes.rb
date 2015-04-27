Rails.application.routes.draw do

	resources :boards, :posts, :welcomeposts, :wdiposts, :uxdiposts, :dmposts, :fewdposts, :pmposts, :dsposts, :bdsposts, :vdposts, :mdposts, :uxdposts, :anyposts, :jobposts


  root :to => 'sessions#new'
	get '/signup' => 'users#new'
	post "users" => "users#create"
  # Pages
	get "/contact" => "pages#contact"
	get "/about" => "pages#about"
	get "/help" => "pages#help"
  # Sessions
	get "/login" => "sessions#new"
	post "/login" => "sessions#create"
	get "/logout" => "sessions#destroy"
  # Boards
  get '/forums' => "boards#forums"
  get 'boards' => 'boards#index'
  get '/new_board' => 'boards#new_board'
  post '/forums' => 'boards#create'

# Threads
  patch "anyposts/:id" => "anyposts#update"
  delete "anyposts/:id" => "anyposts#destroy"
  patch "bdsposts/:id" => "bdsposts#update"
  delete "bdsposts/:id" => "bdsposts#destroy"
  patch "dmposts/:id" => "dmposts#update"
  delete "dmposts/:id" => "dmposts#destroy"
  patch "dsposts/:id" => "dsposts#update"
  delete "dsposts/:id" => "dsposts#destroy"
  patch "fewdposts/:id" => "fewdposts#update"
  delete "fewdposts/:id" => "fewdposts#destroy"
  patch "jobposts/:id" => "jobposts#update"
  delete "jobposts/:id" => "jobposts#destroy"
  patch "mdposts/:id" => "mdposts#update"
  delete "mdposts/:id" => "mdposts#destroy"
  patch "pmposts/:id" => "pmposts#update"
  delete "pmposts/:id" => "pmposts#destroy"
  patch "uxdiposts/:id" => "uxdiposts#update"
  delete "uxdiposts/:id" => "uxdiposts#destroy"
  patch "uxdposts/:id" => "uxdposts#update"
  delete "uxdposts/:id" => "uxdposts#destroy"
  patch "vdposts/:id" => "vdposts#update"
  delete "vdposts/:id" => "vdposts#destroy"
  patch "wdiposts/:id" => "wdiposts#update"
  delete "wdoposts/:id" => "wdiposts#destroy"
  patch "welcomeposts/:id" => "welcomeposts#update"
  delete "welcomeposts/:id" => "welcomeposts#destroy"

end
