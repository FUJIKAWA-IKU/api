class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.integer :from_user_id, null: false
      t.integer :to_user_id, null: false
      t.boolean :status, null: false, default: false

      t.timestamps
    end
  end
end
