class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    t.string :cousine
        t.string :item

      t.timestamps
    end
  end
end
