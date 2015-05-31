class AddColumnNameToVerticalShaftImpactCrusher < ActiveRecord::Migration
  def change
    add_column :vertical_shaft_impact_crushers, :column_name, :string
  end
end
