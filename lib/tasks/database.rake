task :populate => :environment do
  CSV.foreach("lib/csv/pokemon_dataset.csv") do |row|
    params = process_params(row)
    Pokemon.create(params)
  end
end

def process_params(row)
  {
    name:        row[1],
    first_type:  row[2],
    second_type: row[3],
    strength:    row[4],
    hp:          row[5],
    attack:      row[6],
    defense:     row[7],
    special_atk: row[8],
    speed:       row[9],
    generation:  row[10],
    legendary:   row[11]
  }
end
