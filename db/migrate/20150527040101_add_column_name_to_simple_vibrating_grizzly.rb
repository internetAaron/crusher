class AddColumnNameToSimpleVibratingGrizzly < ActiveRecord::Migration
  def change
    add_column :simple_vibrating_grizzlies, :column_name, :string
  end
end
