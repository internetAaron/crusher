class AddColumnNameToSimpleVibratingGrizzlies < ActiveRecord::Migration
  def change
    add_column :simple_vibrating_grizzlies, :location_id, :integer
  end
end
