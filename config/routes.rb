Rails.application.routes.draw do
	root 'posts#index'
  resources :posts, param: :url
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	namespace :admin do
		resources :posts, param: :url
		get 'login', to: 'sessions#new'
		post 'login', to: 'sessions#create'
		delete 'logout', to: 'sessions#destroy'
	end
  get '*not_found' => 'application#routing_error'
  post '*not_found' => 'application#routing_error'
end
