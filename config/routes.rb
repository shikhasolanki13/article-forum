Rails.application.routes.draw do
  get 'pdf/show'

  root 'articles#index'
  get 'home/about_us'
  get 'contact' => 'home#new_contact'
  post 'home/create_contact'
  get 'home/contact_us'
  get 'home/terms_condition'
  resources :home
  resources :articles do 
    resources :comments
  end


  devise_for :users, controllers: {
  	sessions: 'users/sessions',
  	registrations: 'users/registrations',
  	passwords: 'users/passwords',
  	confirmations: 'users/confirmations',
  	unlocks: 'users/unlocks'
  }

end
