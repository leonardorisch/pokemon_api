require 'rails_helper'

RSpec.describe ApiController do
  describe "GET #show_pokemon" do
    let(:pokemon) { create(:pokemon) }
    let(:expected_valid_params) do
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
      }.with_indifferent_access
    end

    context "when request is made with valid params" do
      before { get :show_pokemon, params: { id: pokemon.id, format: :json } }
      it "get a valid pokemon" do
        expect(JSON.parse(response.body)).to include(expected_valid_params)
      end
      it "return status 200" do
        expect(JSON.parse(response.code)).to eq(200)
      end
    end

    context "when request is made with invalid pokemon" do
      before { get :show_pokemon, params: { id: '777', format: :json } }
      it "return 404" do
        expect(JSON.parse(response.code)).to eq(404)
      end
      it "return message pokemon not found" do
        expect(response.body).to include("Pokemon not found!")
      end
    end
  end
end
