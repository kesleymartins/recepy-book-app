class CreateRecepyBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :recepy_books do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
