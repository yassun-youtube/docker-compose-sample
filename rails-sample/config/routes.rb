Rails.application.routes.draw do
  namespace :api, format: 'json' do
    resources :users, only: :index
  end
end
