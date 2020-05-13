Rails.application.routes.draw do
  get 'users/index' => "users#index"
  get 'posts/index' => "posts#index"
  get '/' => "home#login"
  post "/login" => "home#login"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/destroy"=>"posts#destroy"
  post "posts/:id/update"=>"posts#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
