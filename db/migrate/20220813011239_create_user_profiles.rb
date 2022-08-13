class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.integer :user_id, null: false
      t.string :name, null: false, limit: 20, uniqueness: true
      t.integer :age, limit: 3
      t.integer :gender
      t.integer :level
      t.integer :purpose
      t.integer :how_to_connect
      t.text :self_introduction, limit: 2000
      t.string :icon_image

      t.timestamps
    end
  end
end
