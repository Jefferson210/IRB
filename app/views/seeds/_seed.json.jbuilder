json.extract! seed, :id, :crossing, :sowDate, :origin, :numSeeds, :totalWeight, :week, :hydratation, :status, :dateOut, :germination, :codeCrossName, :codeCross ,:created_at, :updated_at
json.url seed_url(seed, format: :json)