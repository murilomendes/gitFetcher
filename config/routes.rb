Rails.application.routes.draw do
  resources :repositories do
    collection do
      get :get_repositories_by_language
    end
  end

  get "home/index"
  root "home#index"
end
