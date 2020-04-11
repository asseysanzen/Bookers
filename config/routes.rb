Rails.application.routes.draw do
  root to: 'books#top'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
end
