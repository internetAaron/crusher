json.array!(@vertical_shaft_impact_crushers) do |vertical_shaft_impact_crusher|
  json.extract! vertical_shaft_impact_crusher, :id, :drive_diameter, :driven_diameter, :motor_rpm, :rotor_diameter
  json.url vertical_shaft_impact_crusher_url(vertical_shaft_impact_crusher, format: :json)
end
