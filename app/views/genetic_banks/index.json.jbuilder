json.array!(@genetic_banks) do |genetic_bank|
  json.extract! genetic_bank, :id, :code, :location, :trademark, :denomination, :year, :breeder, :status, :numPlants, :scent, :headSize, :numPetals, :steamLenght, :production, :opening, :abnormality, :remarks
  json.url genetic_bank_url(genetic_bank, format: :json)
end
