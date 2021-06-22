Rails.application.routes.draw do
  devise_for :users

  root "movies#index"
  get 'reviews/index'
  get '/search' => 'movies#search', :as => 'search_page'
  get '/movies_top/', to: 'movies#top', as: 'top'
  resources :movies do 
    post 'reviews'
  end

end
