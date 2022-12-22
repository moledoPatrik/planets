Rails.application.routes.draw do
  root 'planets#index'
  resources :planets do
    resources :aliens, only: %i[new create destroy]
  end
end
