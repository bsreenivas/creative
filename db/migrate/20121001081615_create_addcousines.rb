class CreateAddcousines < ActiveRecord::Migration
  def change
    create_table :addcousines do |t|
      t.string :cousinename
      t.string :item
      t.string :location
      t.integer :cost
      t.datetime :availabletime

      t.timestamps
    end
  end
end
