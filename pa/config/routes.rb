Pa::Engine.routes.draw do
  root 'index#index'
  resources :clients, only: [:create, :update] do
    collection do
      get 'sign_in'
      post 'do_sign_in'
      delete 'sign_out'
    end
  end
end
