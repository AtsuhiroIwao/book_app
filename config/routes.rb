Rails.application.routes.draw do
 # get 'books'=>'books#new'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show',as:'book'
  get 'books/:id/edit' => 'books#edit', as:'edit_book'
  get 'homes/top'
  post 'books' => 'books#create'
  get '/top' => 'homes#top'
  root to: 'homes#top'
  patch 'books/:id' => 'books#update', as:'update_book'
 delete 'books/:id'=> 'books#destroy', as:'destroy_book'
end
