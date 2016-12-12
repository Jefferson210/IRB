json.array!(@crossings) do |crossing|
  json.extract! crossing, :id, :crossCode, :year, :status, :father, :mother, :crossWeek, :numCrossings, :goodCrossings, :badCrossings, :effective, :percentageEffective, :dateHarvest, :weekHarvest, :numSeeds
  json.url crossing_url(crossing, format: :json)
end
