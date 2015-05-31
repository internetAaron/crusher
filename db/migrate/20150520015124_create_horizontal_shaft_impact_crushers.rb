class CreateHorizontalShaftImpactCrushers < ActiveRecord::Migration
  def change
    create_table :horizontal_shaft_impact_crushers do |t|
      t.string :name
      t.integer :drive_diameter
      t.integer :driven_diameter
      t.integer :rpm
      t.integer :roto_diameter
      t.integer :shaft_rpm
      t.integer :tip_speed

      t.timestamps
    end
  end
end
