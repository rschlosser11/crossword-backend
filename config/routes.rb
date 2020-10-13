Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :crosswords, only: [:index, :show]

  get '/:id/answers', to: 'crosswords#answers'
end
