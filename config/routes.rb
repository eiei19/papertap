Rails.application.routes.draw do
  mount Pa::Engine, at: "pa"
  mount Ta::Engine, at: "ta"

  get "/walk_through"  => "walk_through#index"
  post "/walk_through/upload" => "walk_through#upload"
  post "/walk_through/cut" => "walk_through#cut"
end