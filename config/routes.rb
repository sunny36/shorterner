Rails.application.routes.draw do
  resources :links
  resources :redirects, only: [:show]

  get '/:slug' => "redirects#show"
  root "links#index"
end
