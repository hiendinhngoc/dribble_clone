Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  resources :shots do
    resources :comments
    member do
      put 'like', to: "shot#like"
      put 'unline', to: "shot#unlinke"
    end
  end
  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'shots#index'
end
