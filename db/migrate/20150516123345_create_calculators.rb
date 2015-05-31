class CreateCalculators < ActiveRecord::Migration
  def change
    create_table :calculators do |t|
      t.string :name
      t.boolean :featured
      t.integer :category_id
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
