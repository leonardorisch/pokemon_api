class ApiController < ApplicationController

  EXCEPTED_PARAMS = %w[created_at updated_at]

  def show_pokemon
    pokemon = Pokemon.find(params[:id]).attributes.except(*EXCEPTED_PARAMS)
    render_pretty(pokemon)
  end

  def show_pokemons
    pokemons = Pokemon.all.map { |pokemon| pokemon.attributes.except(*EXCEPTED_PARAMS)  }
    render_pretty(pokemons)
  end

  private

  def render_pretty(content)
    render json: JSON.pretty_generate(content)
  end
end
