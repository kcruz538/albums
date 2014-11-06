Rails.application.routes.draw do
  root 'albums#index'

  get 'albums/new', as: :new_album

  post '/albums' => "albums#create", as: :albums
  post "/contacts" => "contact_forms#create", as: :contact_forms
  get "/contact" => "contact_forms#new", as: :contact
  get "/thanks" => "contact_forms#thanks", as: :thanks


  devise_for :users

end
