Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	namespace :admin do
		resources :posts
		get 'login', to: 'sessions#new'
		post 'login', to: 'sessions#create'
		delete 'logout', to: 'sessions#destroy'
	end
end
