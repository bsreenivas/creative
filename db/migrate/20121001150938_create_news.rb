class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :cousine

      t.timestamps
    end
  end
end
