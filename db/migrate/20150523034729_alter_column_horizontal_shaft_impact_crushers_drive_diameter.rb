class AlterColumnHorizontalShaftImpactCrushersDriveDiameter < ActiveRecord::Migration
  def self.up
    change_table :horizontal_shaft_impact_crushers do |t|
      t.change :drive_diameter, :decimal, :precision => 10, :scale => 2
      t.change :driven_diameter, :decimal, :precision => 10, :scale => 2
    end
  end
  def self.down
    change_table :horizontal_shaft_impact_crushers do |t|
      t.change :drive_diameter, :integer
      t.change :driven_diameter, :integer
    end
  end
end
