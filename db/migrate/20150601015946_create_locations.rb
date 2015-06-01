class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :supervisor
      t.string :supervisor_email

      t.timestamps
    end
  end
end
