# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :cinema_halls, only: %i[index show update create destroy]
  resources :movies, only: %i[index show update create destroy]
  resources :reservations, only: %i[index show create destroy]
  resources :screenings, only: %i[index show update create destroy]
end
