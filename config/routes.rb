CostumerPortal::Application.routes.draw do
  resources :notices

  resources :faqs

  resources :types

  resources :categories

  resources :products

  resources :tickets

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end