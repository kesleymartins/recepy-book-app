class AddIngredientToRecepy < ActiveRecord::Migration[7.0]
  def change
    change_table :ingredients do |t|
      t.references :recepy
    end
  end
end
