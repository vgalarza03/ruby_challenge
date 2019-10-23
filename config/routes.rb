Rails.application.routes.draw do

  resources :contacts
  namespace :users do
    get '/', action: 'index'
    post '/', action: 'create'
    get 'new', action: 'new'
    get ':id/edit', action: 'edit'
    get ':id', action: 'show'
    patch ':id', action: 'update'
    put ':id', action: 'update'
    delete ':id', action: 'destroy'
    end
    
    root :to => 'contacts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
