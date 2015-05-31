class CreateSimpleVibratingGrizzlies < ActiveRecord::Migration
  def change
    create_table :simple_vibrating_grizzlies do |t|
      t.decimal :nominal_opening
      t.decimal :grizzly_width
      t.decimal :grizzly_length

      t.timestamps
    end
  end
end
