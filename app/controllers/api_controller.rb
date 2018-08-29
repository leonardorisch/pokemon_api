class ApiController < ApplicationController

  EXCEPTED_PARAMS = %w[created_at updated_at]

  def show_pokemon
    pokemon = Pokemon.find(params[:id]).attributes.except(*EXCEPTED_PARAMS)
    render_pretty(pokemon, 200)
  rescue ActiveRecord::RecordNotFound => e
    render_pretty("Pokemon not found!", 404 )
  end

  def show_pokemons
    pokemons = Pokemon.all.map { |pokemon| pokemon.attributes.except(*EXCEPTED_PARAMS)  }
    render_pretty(pokemons, status)
  end

  private

  def render_pretty(content, status)
    render json: JSON.pretty_generate(content), status: status
  end
end
