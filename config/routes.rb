Rails.application.routes.draw do
  resources :links
  resources :redirects, only: [:show]

  namespace :api do
    namespace :v1 do
      resources :links
    end
  end

  get '/:slug' => "redirects#show"
  root "links#index"
end
