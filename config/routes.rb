Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root to: 'lists#index'
  resources :lists, only: [:show, :index, :new, :create, :destroy] do
     resources :bookmarks, only: [:create, :new]
   end
   resources :bookmarks, only: :destroy
end
