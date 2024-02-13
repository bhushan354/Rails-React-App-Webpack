Rails.application.routes.draw do
  root to: redirect('/api/all_greeting')

  namespace :api do
    get '/all_greeting', to: 'greeting#all_greeting'
  end
end
