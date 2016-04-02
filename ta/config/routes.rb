Ta::Engine.routes.draw do
  root 'index#index'
  get '/sign_up_with_facebook' => "inputters#facebook_callback"
  resources :inputters, only: [:create, :update] do
    collection do
      delete 'sign_out'
    end
  end
end
