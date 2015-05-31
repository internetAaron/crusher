class CreateVerticalShaftImpactCrushers < ActiveRecord::Migration
  def change
    create_table :vertical_shaft_impact_crushers do |t|
      t.decimal :drive_diameter
      t.decimal :driven_diameter
      t.decimal :motor_rpm
      t.decimal :rotor_diameter

      t.timestamps
    end
  end
end
