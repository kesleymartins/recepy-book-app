class AddRecepiesToRecepyBook < ActiveRecord::Migration[7.0]
  def change
    change_table :recepies do |t|
      t.references :recepy_book
    end
  end
end
