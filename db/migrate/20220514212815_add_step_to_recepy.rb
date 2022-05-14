class AddStepToRecepy < ActiveRecord::Migration[7.0]
  def change
    change_table :steps do |t|
      t.references :recepy
    end
  end
end
