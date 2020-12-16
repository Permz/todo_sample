Rails.application.routes.draw do

  root to: 'home#top'

  get '/about',   to: 'home#top'
  get '/contact', to: 'home#top'

  namespace :api, format: 'json' do
    resources :tasks, only: [:index, :create, :update]
  end

end
