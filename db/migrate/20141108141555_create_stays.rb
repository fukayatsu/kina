class CreateStays < ActiveRecord::Migration
  def change
    create_table :stays do |t|
      t.integer :user_id,   null: false
      t.integer :spot_id,   null: false
      t.datetime :start_at, null: false
      t.datetime :end_at

      t.timestamps null: false
    end
  end
end
