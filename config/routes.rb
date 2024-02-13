# frozen_string_literal: true

Rails.application.routes.draw do
  root 'root#index'

  namespace :api do
    get '/all_greeting', to: 'greeting#all_greeting'
  end
end
