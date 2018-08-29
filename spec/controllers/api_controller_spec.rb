require 'rails_helper'

RSpec.describe ApiController do
  describe "#show_pokemon" do
    let(:pokemon) { create(:pokemon) }
    let(:valid_params) do
      {
        id: pokemon.id,
        name: pokemon.name,
        first_type: pokemon.first_type,
        second_type: pokemon.second_type,
        strength: pokemon.strength,
        hp: pokemon.hp,
        attack: pokemon.attack,
        defense: pokemon.defense,
        special_atk: pokemon.special_atk,
        speed: pokemon.speed,
        generation: pokemon.generation,
        legendary: pokemon.legendary
      }.to_json
    end
    context "when request is made with valid params" do
      it do
        get :show_pokemon, params: { id: pokemon.id, format: :json }
        expect(response.body).to eq(valid_params)
      end
    end
  end
end
