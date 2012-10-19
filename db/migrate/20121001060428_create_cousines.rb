class CreateCousines < ActiveRecord::Migration
  def change
    create_table :cousines do |t|
        t.string :cousinename
        t.string :location
        t.string :item
        t.integer :cost
        t.datetime :availabletime

      t.timestamps
    end
  end
end
