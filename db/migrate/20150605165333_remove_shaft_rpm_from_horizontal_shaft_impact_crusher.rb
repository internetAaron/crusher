class RemoveShaftRpmFromHorizontalShaftImpactCrusher < ActiveRecord::Migration
  def change
    remove_column :horizontal_shaft_impact_crushers, :shaft_rpm, :integer
  end
end
