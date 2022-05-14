class CreateSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :steps do |t|
      t.integer :order, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
