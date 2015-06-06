class RemoveTipSpeedFromHorizontalShaftImpactCrusher < ActiveRecord::Migration
  def change
    remove_column :horizontal_shaft_impact_crushers, :tip_speed, :integer
  end
end
