Rails.application.routes.draw do
  TestProjects::Application.routes.draw do
    get 'auth/:provider/callback', to: 'sessions#create'
    get 'auth/failure', to: redirect('/')
    delete 'signout', to: 'sessions#destroy', as: 'signout'

    resources :movies do
      get :graph, on: :collection
    end

    root to: 'movies#index'
  end
end
