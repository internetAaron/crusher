json.array!(@simple_vibrating_grizzlies) do |simple_vibrating_grizzly|
  json.extract! simple_vibrating_grizzly, :id, :nominal_opening, :grizzly_width, :grizzly_length
  json.url simple_vibrating_grizzly_url(simple_vibrating_grizzly, format: :json)
end
