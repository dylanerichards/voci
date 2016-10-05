json.array!(@one_on_ones) do |one_on_one|
  json.extract! one_on_one, :id, :student, :teacher, :topic, :time, :description
  json.url one_on_one_url(one_on_one, format: :json)
end
