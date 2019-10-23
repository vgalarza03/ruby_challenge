Rails.application.routes.draw do

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
    

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
