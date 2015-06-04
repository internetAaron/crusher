class AddColumnNameToHorizontalShaftImpactCrusher < ActiveRecord::Migration
  def change
    add_column :horizontal_shaft_impact_crushers, :location_id, :integer
  end
end
