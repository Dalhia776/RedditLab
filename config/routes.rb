Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :subreddits do
    resources :links
  end
  resources :links do
    resources :votes, :only => [:create, :update]
  end
  get 'links/:id/redirect' => 'links#redirect', :as => :link_redirect

  root 'links#index'
  # resources :links do
  #   member do
  #     put "like", to: "links#upvote"
  #     put "dislike", to: "links#downvote"
  #   end
  # end

end
