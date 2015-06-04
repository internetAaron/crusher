class AddColumnNameToVerticalShaftImpactCrusher < ActiveRecord::Migration
  def change
    add_column :vertical_shaft_impact_crushers, :location_id, :integer
  end
end
