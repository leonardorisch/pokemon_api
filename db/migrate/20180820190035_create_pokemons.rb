class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :first_type
      t.string :second_type
      t.integer :strength
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :special_atk
      t.integer :speed
      t.integer :generation
      t.boolean :legendary

      t.timestamps
    end
  end
end
