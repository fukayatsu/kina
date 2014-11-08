class CreateSpotUsers < ActiveRecord::Migration
  def change
    create_table :spot_users do |t|
      t.integer :spot_id, null: false
      t.integer :user_id, null: false
      t.integer :stay_count, null: false, default: 0

      t.timestamps null: false
    end
  end
end
