Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/pokemon/:id', to: 'api#show_pokemon'
  get '/pokemons', to: 'api#show_pokemons'
end
