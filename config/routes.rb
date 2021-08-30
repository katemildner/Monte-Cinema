# frozen_string_literal: true

Rails.application.routes.draw do
  resources :cinema_halls
  resources :movies
  resources :reservations
end
