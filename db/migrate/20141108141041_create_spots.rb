class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :name
      t.string :uuid, null: false

      t.timestamps null: false
    end
  end
end
