# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tasks, only: %i[index create show], param: :slug
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
  get "*path", to: "home#index", via: :all
end
