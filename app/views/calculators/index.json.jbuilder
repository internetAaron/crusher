json.array!(@calculators) do |calculator|
  json.extract! calculator, :id, :name, :featured, :category_id, :description, :picture
  json.url calculator_url(calculator, format: :json)
end
