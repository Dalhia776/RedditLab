Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'links#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  # match "/upvote" => "links#upvote"
  # match "/downvote" => "items#downvote"
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:

  2
  3
  4
  5
  6
  resources :links do
    member do
      put "like", to: "links#upvote"
      put "dislike", to: "links#downvote"
      put "all", to: "links#total_votes"
    end
  end

end
