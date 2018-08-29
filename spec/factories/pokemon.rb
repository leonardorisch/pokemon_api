FactoryBot.define do
  factory :pokemon do
    name { "Charmander" }
    first_type  { "Fire" }
    second_type { "N/A" }
    strength { 500 }
    hp { 300 }
    attack { 200 }
    defense { 200 }
    special_atk { 200 }
    speed { 200 }
    generation { 4 }
    legendary { true }
  end
end
