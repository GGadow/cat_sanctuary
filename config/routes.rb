Rails.application.routes.draw do
  resources :cats 

  resources :fixed_pages

  root 'cats#index'
  
end
