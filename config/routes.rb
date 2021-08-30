# frozen_string_literal: true

Rails.application.routes.draw do
  resources :movies
  resources :cinema_halls
end
