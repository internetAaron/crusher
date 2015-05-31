json.array!(@horizontal_shaft_impact_crushers) do |horizontal_shaft_impact_crusher|
  json.extract! horizontal_shaft_impact_crusher, :id, :name, :drive_diameter, :driven_diameter, :rpm, :roto_diameter, :shaft_rpm, :tip_speed
  json.url horizontal_shaft_impact_crusher_url(horizontal_shaft_impact_crusher, format: :json)
end
