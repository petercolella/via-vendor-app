Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#welcome'

  resources :users
  	
	resources :companies do
		resources :stores
		resources :vendors
	end

	# get '*path', to: 'client#index'
end
