Rails.application.routes.draw do
  devise_for :users
  resources :subreddits do
    resources :links
  end
  resources :links do
    resources :votes, :only => [:create, :update]
  end

  resources :links do
    member do
      put 'up', to: 'links#upvote'
      put 'down', to: 'links#downvote'
    end
  end

  root 'links#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  # post "links/:id/upvote" => "links#upvote", as: :upvote
  # post "links/:id/downvote" => "links#downvote", as: :downvote
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:


end
