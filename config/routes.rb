Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users

  root "blog_posts#index"

  resources :blog_posts do
    resource :cover_image, only: [:destroy], module: :blog_posts
  end
  

end
