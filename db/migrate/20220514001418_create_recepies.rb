class CreateRecepies < ActiveRecord::Migration[7.0]
  def change
    create_table :recepies do |t|
      t.string :title, null: false
      t.integer :preparation_time
      t.integer :portion

      t.timestamps
    end
  end
end
